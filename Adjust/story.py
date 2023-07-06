from lupa import LuaRuntime
from luaparser import ast
import os
JP = {}
CN = {}
lua = LuaRuntime(unpack_returned_tuples=True)
lua.execute('''
setmetatable(_G, {
    __index = function(t, k)
        rawset(t, k, {})
        return rawget(t, k)
    end
})
''')


def find_matching_files(JP_folder, CN_folder):
    CNfiles=[]
    n = 0
    for root, dirs, files in os.walk(JP_folder):
        for file in files:
            if 'index' in file or file == '1060600.lua':
                continue
            else:
                with open(os.path.join(root, file), 'r', encoding='utf-8') as f:
                    lua_code = f.read()
                    # 获取 id 的值
                    id_start = lua_code.find('id = "') + 6
                    id_end = lua_code.find('"', id_start)
                    id_value = lua_code[id_start:id_end]
                    id_value = id_value.replace('-', '_', 1)
                    # 替换 return 语句
                    lua_code = lua_code.replace('return', f'{id_value} =', 1)
                    # 执行 Lua 代码
                    lua.execute(lua_code)
                    # 获取表的内容
                    JP[id_value] = lua.globals()[id_value]
                    # print(JP[id_value].scripts[1].sequence[1][1])
                n+=1
                CNfiles.append(file)
    print('日语文件数量:',n)
    importCN(CNfiles, CN_folder)

def importCN(files,CN_folder):
    n = 0
    for file in files:
        pathFile = os.path.join(CN_folder, file)
        if os.path.exists(pathFile):
            with open(pathFile, 'r', encoding='utf-8') as f:
                lua_code = f.read()
                # 获取 id 的值
                id_start = lua_code.find('id = "') + 6
                id_end = lua_code.find('"', id_start)
                id_value = lua_code[id_start:id_end]
                id_value = id_value.replace('-', '_', 1)
                # 替换 return 语句
                lua_code = lua_code.replace('return', f'{id_value} =', 1)
                # 执行 Lua 代码
                # print(pathFile)
                lua.execute(lua_code)
                CN[id_value] = lua.globals()[id_value]
                if 'scripts' in CN[id_value]:
                    n+=1
                    # print(CN[id_value].scripts[1])
                else:
                    print(pathFile,'no scripts')
        # else:
        #     print('NO file:', pathFile)
    print('中文文件数量:',n)

def translate():
    for id_value, jp_table in JP.items():
        # print(id_value, jp_table)
        if id_value in CN:
            cn_table = CN[id_value]
            if 'scripts' in jp_table and 'scripts' in cn_table:
                for jp_index, cn_index in zip(jp_table.scripts, cn_table.scripts):
                    # print(jp_table.scripts[jp_script])
                    jp_script = jp_table.scripts[jp_index]
                    cn_script = cn_table.scripts[cn_index]
                    if 'say' in jp_script and 'say' in cn_script:
                        # jp_script.say = cn_script.say
                        print(jp_script.say,"\n",cn_script.say)
                    # 修改 sequence 字段
                    # if 'sequence' in jp_script and 'sequence' in cn_script:
                    #     for jp_seq, cn_seq in zip(jp_script.sequence, cn_script.sequence):
                    #         if isinstance(jp_seq, list) and isinstance(cn_seq, list):
                    #             jp_seq[1] = cn_seq[1]

# Example usage
input_folder = '../JP/gamecfg/storyjp'
target_folder = '../CN/gamecfg/story'
output_file_path = './output_file.json'
# lupa('./test/actruyue01.lua')
find_matching_files(input_folder, target_folder)
translate()
