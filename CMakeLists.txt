cmake_minimum_required(VERSION 3.0.0)
project(cmaketest VERSION 0.1.0)

# Enable C++11
add_compile_options(-fstandalone-debug -v)

include(ProcessorCount)
ProcessorCount(N)

# 删除 ${CMAKE_CURRENT_SOURCE_DIR}/Output/ 下的所有文件
file(REMOVE_RECURSE "${CMAKE_CURRENT_SOURCE_DIR}/Output")
file(REMOVE_RECURSE "${CMAKE_CURRENT_SOURCE_DIR}/../azurlaneApk/jni/Includes/adjust")
file(MAKE_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/Output")
file(MAKE_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/../azurlaneApk/jni/Includes/adjust")
file(MAKE_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/Output/bin")

# 设置输出目录
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/Output/bin)

# 设置静态lib输出目录
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/Adjust/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/Adjust/lib)

# 模式：DEBUG
# set(CMAKE_CONFIGURATION_TYPES "Debug" CACHE STRING "" FORCE)
# include_directories(${CMAKE_CURRENT_SOURCE_DIR}/Adjust/Include/)

# 设置库路径
# file(GLOB LIB_SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/Adjust/Include/*.c)
# file(GLOB LIB_HEADERS ${CMAKE_CURRENT_SOURCE_DIR}/Adjust/Include/*.h)

# add_library(YourLib SHARED ${LIB_SOURCES} ${LIB_HEADERS}) # 动态dll
# link_directories(${CMAKE_CURRENT_SOURCE_DIR}/lib)

# 添加CMAKE子目录
# add_subdirectory(Include)

# 库变量
# find_library(static_lib lib_MY ${CMAKE_SOURCE_DIR}/lib)

# 查找所有 main*.cpp 文件并存储在列表 mains 中
file(
  GLOB_RECURSE mains
  RELATIVE "${CMAKE_CURRENT_SOURCE_DIR}/Adjust/"
  "${CMAKE_CURRENT_SOURCE_DIR}/Adjust/*.cpp"
)

foreach(mainfile IN LISTS mains)
  # 获取文件名而不包括目录
  get_filename_component(mainname ${mainfile} NAME_WE)
  add_executable(${mainname} ${CMAKE_CURRENT_SOURCE_DIR}/Adjust/${mainfile})
  add_custom_target(
    ${mainname}_custom
    ALL
    COMMAND ${CMAKE_COMMAND} -E chdir ${EXECUTABLE_OUTPUT_PATH} ./${mainname}
  )
endforeach()

add_custom_target(
  PYTHON_TASK
  ALL
  COMMAND ${CMAKE_COMMAND} -E chdir "${CMAKE_CURRENT_SOURCE_DIR}/Adjust/" python3 story.py
  COMMAND ${CMAKE_COMMAND} -E chdir "${CMAKE_CURRENT_SOURCE_DIR}/Adjust/" python3 namecode.py
  COMMAND ${CMAKE_COMMAND} -E chdir "${CMAKE_CURRENT_SOURCE_DIR}/Adjust/" python3 copy.py
)

add_custom_target(
  NDK_TASK
  ALL
  COMMAND ${CMAKE_COMMAND} -E chdir "${CMAKE_CURRENT_SOURCE_DIR}/../AzurLaneApk/jni/" ndk-build -j${N} NDK_APPLICATION_MK=Application.mk APP_BUILD_SCRIPT=Android.mk NDK_OUT=../obj NDK_LIBS_OUT=../libs
)