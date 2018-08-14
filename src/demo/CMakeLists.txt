#扫描目录"."内的源文件
aux_source_directory (. DIR_DEMO_SRCS)                #添加可执行文件
add_library (demo_0 ${DIR_DEMO_SRCS})
#将目标和库文件连接
target_link_libraries (demo_0 fun)
add_subdirectory (fun)
