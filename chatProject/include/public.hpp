#ifndef PUBLIC_H
#define PUBLIC_H

enum EnMsgtype{
    LOGIN_MSG=1,   //登录消息
    LOGIN_MSG_ACK, //登录响应
    LOGINOUT_MSG,  //注销消息
    REG_MSG,       //注册消息；
    REG_MSG_ACK,    //注册响应
    ONE_CHAT_MSG,   //一对一聊天   
    ADD_FRIEND_MSG,

    CREATE_GROUP_MSG,   //创建群
    ADD_GROUP_MSG,      //加入群组
    GROUP_CHAT_MSG,     //群聊天消息      
};


#endif