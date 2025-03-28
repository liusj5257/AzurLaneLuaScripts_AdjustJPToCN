#include <unistd.h>

#include <cstring>
#include <fstream>
#include <iostream>
#include <regex>
#include <sstream>
#include <string>
#include <vector>

using namespace std;

#define attr "tip"
#ifdef _WIN32
#define filename(x) strrchr(x, '\\') ? strrchr(x, '\\') + 1 : x
#define outputPath "..\\..\\Output\\"
#define readPath "..\\..\\JP\\sharecfgdata\\"
#define writePath "..\\..\\CN\\sharecfgdata\\"
#else
#define filename(x) strrchr(x, '/') ? strrchr(x, '/') + 1 : x
#define outputPath "../../Output/"
#define readPath "../../JP/sharecfgdata/"
#define writePath "../../CN/sharecfgdata/"
#endif

string currentFileName = filename(__FILE__);
ofstream output_file;

void readJP(vector<string> &allArray);
void output(string id, const char *attribute, string str);
void writeCN(vector<string> &allArray, const char *attribute);
int main() {
  int lastDot = currentFileName.rfind('.');
  if (lastDot != string::npos) {
    currentFileName =
        currentFileName.substr(0, lastDot);  // remove the file extension
  }
  string OutputFileName = outputPath + currentFileName + ".cpp";
  cout << OutputFileName << endl;
  output_file.open(OutputFileName);
  vector<string> allArray;
  // readJP();
  readJP(allArray);
  writeCN(allArray, attr);
  return 0;
}

void readJP(vector<string> &allArray) {
  string filename = readPath + currentFileName + ".lua";

  string line;
  std::regex pattern("_G\\.pg\\.base\\.gametip\\.(\\w+)");

  ifstream file(filename);
  if (file.is_open()) {
    while (getline(file, line)) {
      std::smatch matches;
      if (std::regex_search(line, matches, pattern)) {
        for (size_t i = 1; i < matches.size(); i++) {
          allArray.push_back(matches[i]);
        }
        // break;
      }
    }
    file.close();
  } else {
    cout << "Unable to open file" << endl;
  }

  for (int i = 0; i < allArray.size(); i++) {
    //      cout << allArray[i] << " ";
  }
  cout << "读取完毕" << endl;
}

void writeCN(vector<string> &allArray, const char *attribute) {
  string filename = writePath + currentFileName + ".lua";
  string line;
  ifstream file(filename);
  if (file.is_open()) {
    for (int i = 0; i < allArray.size(); i++) {
      bool foundAttribute = false;
      string searchString = allArray[i];
      while (getline(file, line)) {
        if (line.find(searchString) != string::npos) {
          foundAttribute = true;
          while (getline(file, line) && !line.empty()) {
            string add = " = \"";
            string attr_add = attribute + add;
            if (line.find(attr_add) != std::string::npos) {
              size_t start = line.find("\"") + 1;
              size_t end = line.find("\"", start);
              string name = line.substr(start, end - start);
              // cout << name << endl;
              output(allArray[i], attribute, name);
              break;
            } else if (line.find("[[") != std::string::npos) {
              std::string name;
              while (getline(file, line)) {
                // bool flag = true;

                if (line.find("]]") !=
                    std::string::npos) {  // check if there is "]]" in the
                                          // line
                  // flag = false;
                  break;
                }
                name += line + "\\n";
              }
              output(allArray[i], attribute, name);
              break;
            }
            // info
            break;
          }
          break;
        }
      }
      if (!foundAttribute) {
        file.clear();
        file.seekg(0, ios::beg);
      }
    }
    output_file << "}\n";
    file.close();
  } else {
    cout << "Unable to open file" << endl;
    // return 0;
  }
  //  return 1;
}

void output(string id, const char *attribute, string str) {
  static bool first = true;
  if (first) {
    first = false;
    output_file << "#include \"../common.h\"\n"
                << "void gametip (lua_State *L) {\n";
  }
  string result = "replaceByAttribute(L,Str(\"" + id + "\"),Str(\"" +
                  attribute + "\")" + ",Str(\"" + str + "\"));";
  output_file << result << endl;
}
