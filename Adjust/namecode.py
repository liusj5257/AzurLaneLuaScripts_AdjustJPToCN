import os
import re

with open("../CN/sharecfg/name_code.lua", "r",encoding="utf-8") as file:
    text = file.read()

# 从文件中读取 namecode 数据
namecodes = {}
for match in re.finditer(r"id = (\d+),\s+name = \"(.*?)\",\s+code = \"(.*?)\"", text):
    id, name, code = match.groups()
    namecodes[int(id)] = name
# 读取 test.txt 文件


folder_path = "../Output"  # 指定文件夹路径
files = []
for filename in os.listdir(folder_path):
    file_path = os.path.join(folder_path, filename)
    if os.path.isfile(file_path):
        files.append(filename)

for filename in files:
  file_path='../Output/'+filename
  with open(file_path, "r", encoding="utf-8") as file:
      text_to_replace = file.read()

  # 替换 {namecode:%d} 为对应的文本
  text_to_replace = re.sub(r"{namecode:(\d+)}", lambda match: namecodes.get(int(match.group(1)), match.group(1)), text_to_replace)

  # 将替换后的文本保存到 ../Output/ship_skin_template.h 文件中
  with open(file_path, "w", encoding="utf-8") as file:
      file.write(text_to_replace)