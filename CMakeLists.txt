#检查cmake版本需求
cmake_minimum_required (VERSION 2.8)
#工程名称:cmake-learn
project (cmake-learn)
#设置目标输出路径
set(EXECUTABLE_OUTPUT_PATH ./bin)
#设置安装路径前缀
set(CMAKE_INSTALL_PREFIX .)

#扫描目录"."内的源文件
aux_source_directory (. DIR_SRCS)
#添加可执行文件
add_executable (demo ${DIR_SRCS})
#添加包含源文件的子目录"src"
add_subdirectory (src)
#将目标和库文件连接
target_link_libraries (demo demo_0)
#安装目标到最终路径
install (TARGETS demo DESTINATION result/bin)
#添加自定义命令:在目标构建完成后，使用wclean清除目标可能产生的安卓警告
add_custom_command (TARGET demo POST_BUILD COMMAND wclean ./bin/demo COMMENT "提示:清除Android警告。")
