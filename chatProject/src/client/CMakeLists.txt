#定义一个SRC——LIST变量，包含了该目录下所有的源文件
aux_source_directory(. SRC_LIST)

#制定生成可执行文件
add_executable(ChatClient ${SRC_LIST})

#制定可执行文件链接所以来的库文件
target_link_libraries(ChatClient pthread)