#include "../../include/server/chatserver.hpp"
#include<iostream>
#include<signal.h>
#include"../../include/server/chatService.hpp"
using namespace std;

//处理异常退出，重置user的状态信息
void resetHandler(int){
    ChatService::instance()->reset();
    exit(0);
}
int main(int argc,char** argv){
    if(argc<3){
        cerr<<"command invalid! "<<endl;
        exit(-1);
    }
    char *ip=argv[1];
    uint16_t port=atoi(argv[2]);

    signal(SIGINT,resetHandler);    //重置状态信息

    EventLoop loop;
    InetAddress addr(ip,port);
    ChatServer server(&loop,addr,"ChatServer");

    server.ServiceStart();   //开启运行
    loop.loop();             //开启事件循环

    return 0;

}