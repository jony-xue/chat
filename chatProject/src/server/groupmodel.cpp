#include"../../include/server/groupmodel.hpp"
#include"../../include/server/db/db.h"

//创建群组
bool GroupModel::createGroup(Group& group){
    char sql[1024]={0};
    sprintf(sql,"insert into ALLGroup(groupname,groupdesc) values('%s','%s')",group.getName().c_str(),group.getDesc().c_str());
    MySQL mysql;
    if(mysql.connect()){
        if(mysql.update(sql)){
            group.setId(mysql_insert_id(mysql.getConnection()));
            return true;
        }
    }
    return false;
}

//加入群组
void GroupModel::addGroup(int userid,int groupid,string role){
    char sql[1024]={0};
    sprintf(sql,"insert into GroupUser values(%d,%d,'%s')",groupid,userid,role.c_str());
    MySQL mysql;
    if(mysql.connect()){
        mysql.update(sql);
    }
}

//查询用户群组所在信息
vector<Group> GroupModel::queryGroup(int userid){
    //根据userid在groupuser的表中查询出用户所属群组信息
    //根据群组信息，查询所有的userid，并且和user表进行多表联合查询，查询详细信息

    char sql[1024]={0};
    sprintf(sql,"select a.id,a.groupname,a.groupdesc from ALLGroup a inner join GroupUser b on a.id = b.groupid where b.userid=%d",
    userid);

    vector<Group> groupvec;

    MySQL mysql;
    if(mysql.connect()){
        MYSQL_RES* res=mysql.query(sql);
        if(res!=nullptr){
            MYSQL_ROW row;
            //查询userid的所有的群组信息
            while((row=mysql_fetch_row(res)) !=nullptr){
                Group group;
                group.setId(atoi(row[0]));
                group.setName(row[1]);
                group.setDesc(row[2]);
                groupvec.push_back(group);
            }
            mysql_free_result(res);
        }
    }

    //查询群组的用户信息
    for(Group& group:groupvec){
        sprintf(sql,"select a.id,a.name,a.state,b.grouprole from user a  inner join GroupUser b on b.userid =a.id where b.groupid=%d",
        group.getId());
        MYSQL_RES *res=mysql.query(sql);
        if(res!=nullptr){
            MYSQL_ROW row;
            while((row=mysql_fetch_row(res))!=nullptr){
                GroupUser user;
                user.setId(atoi(row[0]));
                user.setName(row[1]);
                user.setState(row[2]);
                user.setRole(row[3]);
                group.getusers().push_back(user);
            }
            mysql_free_result(res);
        }
    }
    return groupvec;
}
    //
vector<int> GroupModel::queryGroupUsers(int userid,int groupid){
    char sql[1024]={0};
    sprintf(sql,"select userid from GroupUser where groupid=%d and userid !=%d",groupid,userid);

    vector<int> idVec;
    MySQL mysql;
    if(mysql.connect()){
        MYSQL_RES *res=mysql.query(sql);
        if(res !=nullptr){
            MYSQL_ROW row;
            while((row=mysql_fetch_row(res))!=nullptr){
                idVec.push_back(atoi(row[0]));
            }
            mysql_free_result(res);
        }
    }
    return idVec;
}
