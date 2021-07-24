#定义了SRC——LIST变量，包含了所有的源文件
aux_source_directory(. SRC_LIST)
aux_source_directory(./database DB_LIST)
aux_source_directory(./redis REDIS_LIST)

#制定生成可执行文件
add_executable(Chatserver  ${SRC_LIST}  ${DB_LIST} ${REDIS_LIST})

#制定可执行文件连接的库文件
target_link_libraries(Chatserver muduo_net muduo_base hiredis pthread mysqlclient )
