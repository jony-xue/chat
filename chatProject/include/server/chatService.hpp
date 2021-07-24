#ifndef CHATSERVICE_H
#define CHATSERVICE_H

#include<muduo/net/TcpConnection.h>
#include<unordered_map>
#include<functional>
#include"../../thirdparty/json.hpp"
#include<mutex>

#include"offlineMessagemodel.hpp"
#include"friendmodel.hpp"
#include"UserModel.hpp"
#include"groupmodel.hpp"


using json=nlohmann::json;   //相当于define

//通过解析json里边的msgid，在业务层来运行方法；

using namespace std;
using namespace muduo::net;
using namespace muduo;
//返回值是void 参数是括号内  

//表示处理消息的回调方法类型；
using MsgHandler=std::function<void(const TcpConnectionPtr& conn,json &js,Timestamp time)>;   //给解析出来的msgid映射一个事件回调函数


//业务模块:使用单例模式
class ChatService{
public:
    //获取单例对象方法；
    static ChatService* instance();   
    void login(const TcpConnectionPtr& conn,json &js,Timestamp time);   //登录
    void registe(const TcpConnectionPtr& conn,json &js,Timestamp time);   //注册

    void addFriend(const TcpConnectionPtr& conn,json &js,Timestamp time);


    //获取消息对应的处理器
    MsgHandler gethandler(int msgid);
    //处理客户端异常退出
    void clientCloseException(const TcpConnectionPtr& conn);

    //一对一私聊聊天
    void onechat(const TcpConnectionPtr& conn,json &js,Timestamp time);
    //服务器异常退出，更改状态
    void reset();
    // 创建群组业务
    void createGroup(const TcpConnectionPtr &conn, json &js, Timestamp time);
    // 加入群组业务
    void addGroup(const TcpConnectionPtr &conn, json &js, Timestamp time);
    // 群组聊天业务
    void groupChat(const TcpConnectionPtr &conn, json &js, Timestamp time);
private:
    //构造函数私有化
    ChatService();   
    unordered_map<int,MsgHandler> _msgHandlermap;

    //存储用户的通信连接信息
    unordered_map<int,TcpConnectionPtr> _userConnMap;


    //定义互斥锁，保证_userConnMap的线程安全
    mutex _Connmutex;

    //数据操作类对象

    UserModel _usermodel;
    OfflineMsgModel _offlinemsgmodel;
    FriendModel _friendmodel;
    GroupModel _groupModel;
};
#endif