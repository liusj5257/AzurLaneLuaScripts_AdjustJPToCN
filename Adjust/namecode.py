import os
import re
from lupa import LuaRuntime
pg = {}
lua = LuaRuntime(unpack_returned_tuples=True)
lua.execute('''
setmetatable(_G, {
    __index = function(t, k)
        rawset(t, k, {})
        return rawget(t, k)
    end
})
''')

with open("../CN/sharecfg/name_code.lua", "r",encoding="utf-8") as file:
    lua_code = file.read()
try:
    lua.execute(lua_code)
    print("Lua code executed successfully.")
    name_code = lua.eval('_G.pg.name_code')
except Exception as e:
    print(f"An error occurred during Lua execution: {e}")


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
  text_to_replace = re.sub(r"{namecode:(\d+)(:[^}]*)?}", lambda match: name_code[int(match.group(1))]['name'] or 'error', text_to_replace)

  # 将替换后的文本保存到 ../Output/ship_skin_template.h 文件中
  with open(file_path, "w", encoding="utf-8") as file:
      file.write(text_to_replace)
      print(filename+" done")
      file.close()