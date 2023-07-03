#include <unistd.h>

#include <cstring>
#include <fstream>
#include <iostream>
#include <sstream>
#include <string>
#include <vector>


using namespace std;

#define attr "name"
#ifdef _WIN32
#define filename(x) strrchr(x, '\\') ? strrchr(x, '\\') + 1 : x
#define outputPath "..\\..\\Output\\"
#define readPath "..\\..\\JP\\sharecfg\\"
#define writePath "..\\..\\CN\\sharecfgdata\\"
#else
#define filename(x) strrchr(x, '/') ? strrchr(x, '/') + 1 : x
#define outputPath "../../Output/"
#define readPath "../../JP/sharecfg/"
#define writePath "../../CN/sharecfgdata/"
#endif

string currentFileName = filename(__FILE__);
ofstream output_file;

void readJP(vector<int> &allArray);
void output(int id, const char *attribute, string str);
void writeCN(vector<int> &allArray, const char *attribute);
int main() {
  int lastDot = currentFileName.rfind('.');
  if (lastDot != string::npos) {
    currentFileName =
        currentFileName.substr(0, lastDot);  // remove the file extension
  }
  string OutputFileName = outputPath + currentFileName + ".h";
  cout << OutputFileName << endl;
  output_file.open(OutputFileName);

  vector<int> allArray;

  // readJP();
  readJP(allArray);
  writeCN(allArray, attr);
  return 0;
}

void readJP(vector<int> &allArray) {
  string filename = readPath + currentFileName + ".lua";

  string line;
  ifstream file(filename);
  if (file.is_open()) {
    while (getline(file, line)) {
      if (line.find("all") != string::npos) {
        while (getline(file, line) && !line.empty()) {
          if (line.find('}') != std::string::npos) {
            break;
          }
          stringstream ss(line);
          if (ss.str() == "}") break;
          int value;
          while (ss >> value) {
            allArray.push_back(value);
          }
        }
        break;
      }
    }
    file.close();
  } else {
    cout << "Unable to open JP file" << endl;
  }

  // for (int i = 0; i < allArray.size(); i++) {
  //       cout << allArray[i] << " ";
  // }
  cout << "读取All完毕" << endl;
}

void writeCN(vector<int> &allArray, const char *attribute) {
  string filename = writePath + currentFileName + ".lua";
  string line;
  ifstream file(filename);
  if (file.is_open()) {
    for (int i = 0; i < allArray.size(); i++) {
      bool foundAttribute = false;
      string searchString =
          "_G.pg.base.expedition_data_template[" + to_string(allArray[i]) + "]";
      while (getline(file, line)) {
        if (line.find(searchString) != string::npos) {
          foundAttribute = true;
          while (getline(file, line) && !line.empty()) {
            string add = " = ";
            string attr_add = attribute + add;
            if (line.find(attr_add) != std::string::npos) {
              size_t start = line.find("\"") + 1;
              size_t end = line.find("\"", start);
              string name = line.substr(start, end - start);
              // cout << name << endl;
              output(allArray[i], attribute, name);
              if (i == allArray.size() - 1) output_file << "}\n";
              break;
            }
          }
          break;
        }
      }
      if (!foundAttribute) {
        file.clear();
        file.seekg(0, ios::beg);
      }
    }
    // file.close();
  } else {
    cout << "Unable to open file" << endl;
    // return 0;
  }

  //  return 1;
  file.close();
}

void output(int id, const char *attribute, string str) {
  static bool first = true;
  if (first) {
    first = false;
    output_file << "#include \"../../lua/lua.h\"\n"
                << "void expedition_data_template(lua_State *L) {\n";
  }
  string result = "replaceString(L," + to_string(id) + ",Str(\"" + attribute +
                  "\")" + ",Str(\"" + str + "\"));";
  output_file << result << endl;
}
