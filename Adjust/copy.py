import os
import shutil
#移动文件夹中所有cpp,h文件到其他文件夹
source_folder = "../Output/"
target_folder = "../../AzurLaneApk/jni/Includes/adjust"
# 遍历源文件夹中的所有 .cpp 和 .h 文件
for filename in os.listdir(source_folder):
    if filename.endswith(".cpp") or filename.endswith(".h"):
        source_file_path = os.path.join(source_folder, filename)
        target_file_path = os.path.join(target_folder, filename)
        # 移动文件
        shutil.move(source_file_path, target_file_path)
        print(f"已移动文件: {filename}")

print("所有文件已移动完成。")