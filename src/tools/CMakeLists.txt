aux_source_directory (. DIR_TOOL_SRCS)
add_executable (wclean ${DIR_TOOL_SRCS})
#添加自定义命令:在目标构建完成后，使用wclean清除>目标可能产生的安卓警告
set(WCLEAN ${PROJECT_BINARY_DIR}/bin/wclean) 
add_custom_command (TARGET wclean POST_BUILD COMMAND ${WCLEAN} ${PROJECT_BINARY_DIR}/bin/demo DEPENDS ${WCLEAN} COMMENT "提示:清除Android警告。")
add_compile_options (-std=c++14)
add_compile_options (-Wall)
add_compile_options (-pedantic)
