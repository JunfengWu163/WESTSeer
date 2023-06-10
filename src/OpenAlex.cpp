#ifdef _WIN32
#include <winsock.h>
#endif // _WIN32
#include <OpenAlex.h>
#include <StringProcessing.h>
#include <ctime>
#include <sstream>
#include <regex>
#include <fstream>
#include <algorithm>
#include <httplib.h>

OpenAlex::OpenAlex(const std::string email, const std::string path,
                   const std::string kws1, const std::string kws2,
                   ProgressReporter *progressReporter) : _scope(path, kws1, kws2)
{
    _email = email;
    std::time_t t = std::time(0);   // get time now
    std::tm* now = std::localtime(&t);
    _y2 = now->tm_year + 1900;
    _y1 = _y2 - 5;
    _y0 = _y1 - 25;
    _progressReporter = progressReporter;
    _cancelled.store(false);
    _downloadThread = NULL;

    int numCombs = _scope.numCombinations();
    for (int y = _y2 - 1; y >= _y0; y--)
    {
        std::vector<std::string> urlsOfY;
        for (int i = 0; i < numCombs; i++)
        {
            std::string combination = _scope.getCombination(i);
            std::vector<std::string> kws = splitString(combination, "&");
            std::stringstream ss;
            ss << "/works?mailto=" << _email
               << "&per-page=200&filter=publication_year:"
               << y << ",language:en";
            ss << ",abstract.search:\""
               << kws[0] << "\"";
            ss << ",abstract.search:\""
               << kws[1] << "\"";
            urlsOfY.push_back(ss.str());
        }
        std::pair<int,std::vector<std::string>> yUrls(y, urlsOfY);
        _urls.push_back(yUrls);
    }
    _samples.resize(numCombs);

    if (!_scope.init())
    {
        _error = "Cannot init scope.";
    }
}

OpenAlex::~OpenAlex()
{
    cancel();
    if (_downloadThread != NULL)
    {
        _downloadThread->join();
        delete _downloadThread;
    }
}

void OpenAlex::cancel()
{
    _cancelled.store(true);
}

int getResultCount(const nlohmann::json& response)
{
    if (response.find("meta") == response.end())
    {
        return 0;
    }
    auto meta = response["meta"];
    if (meta.find("count") == meta.end())
    {
        return 0;
    }
    return meta["count"];
}

std::string getNextCursor(const nlohmann::json& response)
{
    if (response.find("meta") == response.end())
    {
        return "";
    }
    auto meta = response["meta"];
    if (meta.find("next_cursor") == meta.end())
    {
        return "";
    }
    auto nextCursor = meta["next_cursor"];
    if (nextCursor.is_null() || nextCursor == "")
    {
        return "";
    }
    return nextCursor;
}

void OpenAlex::download(bool samplesOnly)
{
    _samplesOnly = samplesOnly;
    _downloadThread = new std::thread([this]()
    {

        if (_cancelled.load() == true)
        {
            return;
        }

        httplib::Client client("http://api.openalex.org");
        for (auto &yUrls : _urls)
        {
            int y = yUrls.first;
            std::vector<std::string> urlsOfY = yUrls.second;
            for (size_t idxComb = 0; idxComb < urlsOfY.size(); idxComb++)
            {
                std::string url = urlsOfY[idxComb];
                std::map<uint64_t, Publication> pubsOfY;

                // get first page of this download url
                auto res = client.Get(url + "&cursor=*");
                while (res->status != 200)
                {
                    if (_cancelled.load() == true)
                        break;
                    std::this_thread::sleep_for(std::chrono::milliseconds(100));
                    res = client.Get(url + "&cursor=*");
                }
                if (_cancelled.load() == true)
                    break;

                // parse the response on the first page
                nlohmann::json response = nlohmann::json::parse(res->body);
                std::string nextCursor = getNextCursor(response);
                auto resultsOnPage = response["results"];
                int numResultsOnPage = resultsOnPage.size();
                _samples[idxComb].clear();
                if (numResultsOnPage > 0)
                {
                    for (auto &result: resultsOnPage)
                    {
                        Publication pub(result);
                        pubsOfY[pub.id()] = pub;
                        _samples[idxComb].push_back(pub);
                    }
                }

                if (_samplesOnly)
                    break;

                // repeatedly get next page
                while (nextCursor != "")
                {
                    // request next page
                    std::string pageURL = url + "&cursor=" + nextCursor;
                    res = client.Get(pageURL);
                    while (res->status != 200)
                    {
                        if (_cancelled.load() == true)
                            break;
                        std::this_thread::sleep_for(std::chrono::milliseconds(100));
                        res = client.Get(pageURL);
                    }
                    if (_cancelled.load() == true)
                        break;

                    // parse the page
                    response = nlohmann::json::parse(res->body);
                    nextCursor = getNextCursor(response);
                    resultsOnPage = response["results"];
                    for (auto &result: resultsOnPage)
                    {
                        Publication pub(result);
                        pubsOfY[pub.id()] = pub;
                    }
                    std::this_thread::sleep_for(std::chrono::milliseconds(100));
                }

                if (_cancelled.load() == true)
                {
                    break;
                }

                if (!_scope.save(idxComb, y, pubsOfY))
                {
                    _error = "Cannot save publications.";
                }
            }

            if (_samplesOnly)
                break;
        }
    });
}

