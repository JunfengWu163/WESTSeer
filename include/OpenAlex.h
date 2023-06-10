#ifndef __OPENALEX_H__
#define __OPENALEX_H__
#include <string>
#include <thread>
#include <vector>
#include <map>
#include <set>
#include <mutex>
#include <atomic>
#include <stdint.h>
#include <Publication.h>
#include <ResearchScope.h>
#include <ProgressReporter.h>

class OpenAlex {
	private:
		std::string _email;
		ResearchScope _scope;
		int _y0;
		int _y1;
		int _y2;
		ProgressReporter *_progressReporter;
		std::vector<std::pair<int,std::vector<std::string>>> _urls;
		bool _samplesOnly;
		std::vector<std::vector<Publication>> _samples;
		std::string _error;

		std::atomic<bool> _cancelled;
		std::thread *_downloadThread;

	public:
		OpenAlex(const std::string email, const std::string path,
            const std::string kws1, const std::string kws2,
			ProgressReporter *progressReporter);
		~OpenAlex();
		inline const ResearchScope &scope()
		{
		    return _scope;
		}
		inline const std::vector<Publication>& samples(int idxComb)
		{
		    return _samples[idxComb];
		}
		inline std::string error()
		{
		    return _error;
		}

		void cancel();
		void download(bool samplesOnly);

	protected:

};
#endif
