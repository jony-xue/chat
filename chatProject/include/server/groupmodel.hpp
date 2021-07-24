#ifndef GROUPMODEL_H
#define GROUPMODEL_H

#include"group.hpp"
#include<string>
#include<vector>

using namespace std;

class GroupModel{
public:
    //创建群组
    bool createGroup(Group& group);
    //加群
    void addGroup(int userid,int groupid,string role);
    //查询用户群组信息
    vector<Group> queryGroup(int userid);
    //根据指定的groupid查询用户id列表，给其他成员发送消息；
    vector<int> queryGroupUsers(int userid,int groupid);

};
#endif