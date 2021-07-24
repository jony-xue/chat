#ifndef CHATSERVER_H
#define CHATSERVER_H

#include<muduo/net/EventLoop.h>
#include<muduo/net/TcpServer.h>

using namespace muduo;
using namespace muduo::net;

class ChatServer{
public:
    ChatServer(EventLoop* loop,
            const InetAddress& listenAddr,
            const string& nameArg);
    void ServiceStart();

private:
    TcpServer _server;
    EventLoop* _loop;

    //主线程监听连接回调函数
    void OnConnection(const TcpConnectionPtr& );      
    
    //worker监听读写事件回调函数
    void OnMessage(const TcpConnectionPtr&,Buffer* ,Timestamp);
};

#endif