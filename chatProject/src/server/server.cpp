#include "../../include/server/chatserver.hpp"
#include "../../include/server/chatService.hpp"
#include<string>
#include<functional>
#include "../../thirdparty/json.hpp"
#include<iostream>
using namespace std;
using namespace placeholders;
using json=nlohmann::json;

ChatServer::ChatServer(EventLoop* loop,    //构造
                        const InetAddress& listenAddr,
                        const string &nameArg)
            :_server(loop,listenAddr,nameArg),_loop(loop){
        
        //注册链接回调
        _server.setConnectionCallback(bind(&ChatServer::OnConnection,this,_1));

        //注册消息回调
        _server.setMessageCallback(bind(&ChatServer::OnMessage,this,_1,_2,_3));

        //设置线程数目
        _server.setThreadNum(7);
    }

    void ChatServer::ServiceStart(){
        _server.start();
    }

    void ChatServer::OnConnection(const TcpConnectionPtr& conn){
        //客户端断开连接
        if(!conn->connected()){

            ChatService::instance()->clientCloseException(conn);

            conn->shutdown();    //释放socket
        }


    }
    void ChatServer::OnMessage(const TcpConnectionPtr&conn ,Buffer* buffer,Timestamp time){
        string buf=buffer->retrieveAllAsString();

        cout<<buf<<endl;

        json js=json::parse(buf);   //反序列化json

        //完全解耦网络米快的代码和业务模块的代码
        //通过解析msgid来获取不同业务的handler，然后回调消息绑定好的实际处理器，来执行相应的业务；
        auto msghandler=ChatService::instance()->gethandler(js["msgid"].get<int>());    //强转成int类型；
        
        msghandler(conn,js,time);   //事件进行绑定
    }