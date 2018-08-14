aux_source_directory(.  DIR_DEMO_SRCS)
add_library (demo_0 ${DIR_DEMO_SRCS})
add_subdirectory(fun)
target_link_libraries(demo_0 fun)
