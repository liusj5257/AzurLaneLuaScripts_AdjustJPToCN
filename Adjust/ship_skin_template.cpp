#include <unistd.h>

#include <algorithm>
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
#define writePath "..\\..\\CN\\sharecfg\\ship_skin_template_sublist\\"
#else
#define filename(x) strrchr(x, '/') ? strrchr(x, '/') + 1 : x
#define outputPath "../../Output/"
#define readPath "../../JP/sharecfg/"
#define writePath "../../CN/sharecfg/ship_skin_template_sublist/"
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
  string buffer;
  string buffer_H = "";
  string buffer_EH = "";
  int fileCounter = 1;
  string baseFilename = "ship_skin_template_";
  for (int j = 1; j <= 20; j++) {
    string filename = writePath + currentFileName + "_" + to_string(j) + ".lua";
    string line;
    ifstream file(filename);
    if (file.is_open()) {
      for (int i = 0; i < allArray.size(); i++) {
        bool foundAttribute = false;
        string searchString = "[" + to_string(allArray[i]) + "]";
        bool first = true;
        while (getline(file, line)) {
          if (line.find(searchString) != string::npos) {
            foundAttribute = true;
            while (getline(file, line) && !line.empty()) {
              size_t start = line.find("\"") + 1;
              size_t end = line.find_last_of("\"");
              string name = line.substr(start, end - start);
              if (!name.empty()) {
                size_t equalSignPos = line.find(" = \"");
                if (equalSignPos != std::string::npos) {
                  string attribute = line.substr(0, equalSignPos);
                  attribute.erase(
                      remove(attribute.begin(), attribute.end(), '\t'),
                      attribute.end());
                  if (attribute == "name" || attribute == "desc") {
                    if (first) {
                      buffer +=
                          "getByList(L," + to_string(allArray[i]) + ");\n";
                      first = false;
                    }
                    buffer += string("replaceString2(L,Str(\"") +
                              attribute.c_str() + "\"),Str(\"" + name.c_str() +
                              "\"));\n";
                  }
                }
              }
            }
            if (!first) buffer += "lua_pop(L,1);\n";
            break;
          }
        }

        if (!foundAttribute) {
          file.clear();
          file.seekg(0, ios::beg);
        }
        if (!buffer.empty() && (i % 100 == 0 || i == allArray.size() - 1)) {
          std::string filename =
              outputPath + baseFilename + std::to_string(fileCounter) + ".cpp";
          std::ofstream outFile(filename);
          // 确保文件正常打开
          if (outFile.is_open()) {
            buffer_EH += "extern void " + baseFilename +
                         std::to_string(fileCounter) + "(lua_State *L);\n";
            buffer_H += baseFilename + std::to_string(fileCounter) +
                        "(L);\n";
            outFile << "#include \"../common.h\"\nvoid " << baseFilename
                    << fileCounter << "(lua_State *L) {\n"
                    << buffer << "}\n"
                    << std::endl;
            outFile.close();
            std::cout << "已写入文件: " << filename << std::endl;
            buffer.clear();
          } else {
            std::cerr << "无法创建文件: " << filename << std::endl;
            break;
          }
          fileCounter++;
        }
      }

    } else {
      cout << "Unable to open file" << filename << endl;
    }
    file.close();
  }
  output_file << buffer_H;
  std::string filename = std::string(outputPath) + "ship_skin_template_E.h";
  std::ofstream outFile(filename);
  if (outFile.is_open()) {
    outFile << buffer_EH << std::endl;
    outFile.close();
    std::cout << "已写入文件: " << filename << std::endl;
  } else {
    std::cerr << "无法创建文件: " << filename << std::endl;
  }
}

void output(int id, const char *attribute, string str) {
  string result = string("replaceString2(L,Str(\"") + attribute + "\"),Str(\"" +
                  str + "\"));";
  // output_file << result << endl;
}
