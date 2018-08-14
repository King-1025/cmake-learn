#扫描目录"."内的源文件
aux_source_directory (. DIR_SRCS)                #添加可执行文件
add_executable (demo ${DIR_SRCS})
#将目标和库文件连接
target_link_libraries (demo demo_0)
#安装目标到最终路径
install (TARGETS demo RUNTIME DESTINATION bin)
#添加自定义命令:在目标构建完成后，使用wclean清除>目标可能产生的安卓警告
add_custom_command (TARGET demo POST_BUILD COMMAND wclean ${PROJECT_BINARY_DIR}/bin/demo COMMENT "提示:清除Android警告。")
add_subdirectory (demo)
#add_subdirectory (tools bin)
