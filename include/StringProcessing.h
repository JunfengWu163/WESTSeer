#ifndef STRINGPROCESSING_H_INCLUDED
#define STRINGPROCESSING_H_INCLUDED

#include <string>
#include <vector>
using namespace std;

void removeCharsFromString(string &str, const char* charsToRemove);

string& trim(string& s, const char* t = " \t\n\r\f\v");

vector<string> splitString(string text, string delimiter, bool needTrimming = true);

string normalize(const string& s);

vector<string> tokenize(const string &phrase);

#endif // STRINGPROCESSING_H_INCLUDED
