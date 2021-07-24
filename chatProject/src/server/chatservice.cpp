#include "../../include/server/chatService.hpp"
#include "../../include/server/offlineMessagemodel.hpp"
#include "../../include/server/friendmodel.hpp"
#include "../../include/public.hpp"
#include "../../include/server/groupmodel.hpp"

#include <muduo/base/Logging.h>
#include<vector>
#include <string>
#include<map>

using namespace std;
using namespace muduo;

ChatService *ChatService::instance()
{
    static ChatService service; //静态对象
    return &service;
}
//构造，注册消息和对应的回调操作
ChatService::ChatService()
{
    //核心：绑定器
    _msgHandlermap.insert({LOGIN_MSG, std::bind(&ChatService::login, this, _1, _2, _3)});
    _msgHandlermap.insert({REG_MSG, std::bind(&ChatService::registe, this, _1, _2, _3)});
    _msgHandlermap.insert({ONE_CHAT_MSG, std::bind(&ChatService::onechat, this, _1, _2, _3)});
    _msgHandlermap.insert({ADD_FRIEND_MSG,std::bind(&ChatService::addFriend,this,_1,_2,_3)});
    //_msgHandlermap.insert({LOGINOUT_MSG,std::bind(&ChatService::login,this,_1,_2,_3)});

    //群组相关
    _msgHandlermap.insert({CREATE_GROUP_MSG,std::bind(&ChatService::createGroup,this,_1,_2,_3)});
    _msgHandlermap.insert({ADD_GROUP_MSG,std::bind(&ChatService::addGroup,this,_1,_2,_3)});
    _msgHandlermap.insert({GROUP_CHAT_MSG,std::bind(&ChatService::groupChat,this,_1,_2,_3)});
}
//获取消息对应的处理器
MsgHandler ChatService::gethandler(int msgid)
{
    auto it = _msgHandlermap.find(msgid);
    if (it == _msgHandlermap.end())
    {
        //没找到
        return [=](const TcpConnectionPtr &conn, json &js, Timestamp time) { //lambda表达式
            LOG_ERROR << " MSGID:" << msgid << "could not find!";
        };
    }else{
        return _msgHandlermap[msgid];
    }
}
//id + pwd
void ChatService::login(const TcpConnectionPtr &conn, json &js, Timestamp time) //登录
{
    LOG_INFO << "Login service running";
    int id = js["id"].get<int>(); //转成整形；

    string pwd = js["password"];
    User user = _usermodel.query(id);

    if (user.getId() == id && user.getPasswd() == pwd)
    {

        if (user.getState() == "online")
        {
            //已在线，不允许重复登录
            json response;
            response["msgid"] = LOGIN_MSG_ACK;
            response["error"] = 2;
            response["errormsg"] = "已登录，请从新输入";

            conn->send(response.dump()); //加码+send
        }
        else
        {
            //记录用户连接信息
            //lock_guard,作用域结束自动释放mutex
            {
                lock_guard<mutex> lock(_Connmutex);
                _userConnMap.insert({id, conn});
            }
            //登陆成功，更新状态信息
            user.setState("online");
            _usermodel.updateState(user);

            //查询是否有离线消息，有的话发送过去

            json response;
            response["msgid"] = LOGIN_MSG_ACK;
            response["error"] = 0;
            response["id"] = user.getId();
            response["name"] = user.getName();
            
            //查询是否有离线消息
            vector<string> vec=_offlinemsgmodel.query(id);
            if(!vec.empty()){
                response["offlinemsg"]=vec;
                //读取玩之后删除离线消息；
                _offlinemsgmodel.remove(id);
            }

            //查询用户好友信息
            vector<User> uservec=_friendmodel.query(id);

            if(!uservec.empty()){
                vector<string> vec2;
                for(User& user:uservec){
                    json js;
                    js["id"]=user.getId();
                    js["name"]=user.getName();
                    js["state"]=user.getState();
                    vec2.push_back(js.dump());
                }
                response["friends"]=vec2;
            }

            conn->send(response.dump()); //加码+send
        }
    }
    else
    {
        //用户不存在，或者用户存在但是密码错误，登录失败
        json response;
        response["msgid"] = LOGIN_MSG_ACK;
        response["error"] = 1;
        response["errormsg"] = "登录错误";
        conn->send(response.dump()); //加码+send
    }
}
//name  string
void ChatService::registe(const TcpConnectionPtr &conn, json &js, Timestamp time) //注册
{
    LOG_INFO << "register service running";
    string name = js["name"];

    string passwd = js["password"];

    User user;
    user.setName(name);
    user.setPasswd(passwd);

    bool InsertState = _usermodel.insert(user);
    if (InsertState)
    {
        LOG_INFO<<"register success!";
        //注册成功
        json response;
        response["msgid"] = REG_MSG_ACK;
        response["error"] = 0;
        response["id"] = user.getId();
        conn->send(response.dump());
    }
    else
    {
        //注册失败
        json response;
        response["msgid"] = REG_MSG_ACK;
        response["error"] = 1;
        //response["errmsg"] = 1;
        response["id"] = user.getId();
        conn->send(response.dump());
    }
}
//处理客户端异常退出
void ChatService::clientCloseException(const TcpConnectionPtr &conn)
{

    User user;
    {
        lock_guard<mutex> lock(_Connmutex);
        //从map表删除链接信息
        for (auto it = _userConnMap.begin(); it != _userConnMap.end(); it++)
        {
            if (it->second == conn)
            {
                user.setId(it->first);
                _userConnMap.erase(it);
                break;
            }
        }
    }

    //更新状态信息到offline
    if (user.getId() != -1)
    { 
        //确保用户有效
        user.setState("offline");
        _usermodel.updateState(user);
    }
}

void ChatService::onechat(const TcpConnectionPtr &conn, json &js, Timestamp time)
{

    int toId = js["toid"].get<int>(); //加锁防止找寻出错
    //表示用户是否在线
    bool userState = false;
    {
        lock_guard<mutex> lock(_Connmutex);
        auto it = _userConnMap.find(toId);
        if (it != _userConnMap.end())
        {
            //找到，服务器转发消息给toId用户
            it->second->send(js.dump());
            return;
        }
    }
    //toId不在线，储存离线消息
    _offlinemsgmodel.insert(toId,js.dump());
}

void ChatService::reset(){
    //online状态设置成offline
    _usermodel.resetState();
}
//添加好友::msgid  id friendid;
void ChatService::addFriend(const TcpConnectionPtr& conn,json &js,Timestamp time)
{
    int userid=js["id"].get<int>();
    int friendid=js["friendid"].get<int>();

    //存储好友信息
    _friendmodel.insert(userid,friendid);

}

void ChatService::createGroup(const TcpConnectionPtr& conn,json&js,Timestamp time){
    int userid=js["id"].get<int>();
    string name=js["groupname"];
    string desc=js["groupdesc"];

    //存储新创建的群组信息
    Group group(-1,name,desc);
    if(_groupModel.createGroup(group)){

        //储存群组创建人信息
        _groupModel.addGroup(userid,group.getId(),"creator");
    }

}

void ChatService::addGroup(const TcpConnectionPtr& conn,json& js,Timestamp time){
    int userid=js["id"].get<int>();
    int groupid=js["groupid"].get<int>();
    _groupModel.addGroup(userid,groupid,"normal");
} 

void ChatService::groupChat(const TcpConnectionPtr& conn,json& js,Timestamp time){
    int userid=js["id"].get<int>();
    int groupid=js["groupid"].get<int>();
    vector<int> useridVec=_groupModel.queryGroupUsers(userid,groupid);
    lock_guard<mutex> lock(_Connmutex);
    
    for(int id :useridVec){
        auto it=_userConnMap.find(id);
        if(it !=_userConnMap.end()){
            //转发群消息
            it->second->send(js.dump());
        }else{
            //存储离线消息
            _offlinemsgmodel.insert(id,js.dump());
        }
    }
}