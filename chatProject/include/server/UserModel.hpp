#ifndef USERMODEL_H
#define USERMODEL_H

//user表的操作类
#include"user.hpp"

class UserModel{
public:
    //添加
    bool insert(User& user);
    //根据id查询user
    User query(int id);

    //更新用户状态信息
    bool updateState(User user);
    
    //重置用户的状态信息
    void resetState();
};


#endif