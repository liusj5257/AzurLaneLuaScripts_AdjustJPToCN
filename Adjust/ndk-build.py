

#获取cpu线程数
import multiprocessing
num_cpus = multiprocessing.cpu_count()
import subprocess






command = [
    "ndk-build.cmd",  # Replace with the actual path to ndk-build
    f"-j{num_cpus}",  # Replace with the actual number of threads you want to use
    "NDK_APPLICATION_MK=Application.mk",
    "APP_BUILD_SCRIPT=Android.mk",
    "NDK_OUT=../obj",
    "NDK_LIBS_OUT=../libs"
]
result = subprocess.run(command, capture_output=True, text=True)
print("Output:")
print(result.stdout)
print("Error:")
print(result.stderr)
