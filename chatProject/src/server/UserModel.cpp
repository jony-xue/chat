#include<iostream>
#include "../../include/server/UserModel.hpp"
#include "../../include/server/user.hpp"
#include "../../include/server/db/db.h"


using namespace std;

bool UserModel::insert(User& user){
    //组装sql语句
    char sql[1024]={0};
    sprintf(sql, "insert into user(name, password, state) values('%s', '%s', '%s')",
                user.getName().c_str(),user.getPasswd().c_str(),user.getState().c_str()
                );
    MySQL mysql;

    //链接数据库
    if(mysql.connect()){
        if(mysql.update(sql)){
            //获取插入成功等等用户数据的主键id
            user.setId(mysql_insert_id(mysql.getConnection()));    
            return true;
        }
    }
    return false;
}

User UserModel::query(int id){
     //组装sql语句
    char sql[1024]={0};
    sprintf(sql,"select * from user where id='%d'",id);
    MySQL mysql;

    //链接数据库
    if(mysql.connect()){
        MYSQL_RES *res=mysql.query(sql);
        if(res != nullptr){
            MYSQL_ROW row=mysql_fetch_row(res);

            if(row != nullptr){
                User user;
                user.setId(atoi(row[0]));
                user.setName(row[1]);
                user.setPasswd(row[2]);
                user.setState(row[3]);
                //释放资源
                mysql_free_result(res);
                return user;
            }
        }

    }
    return User();   //id默认是-1
}
//更新状态信息
bool UserModel::updateState(User user){
//组装sql语句
    char sql[1024]={0};
    sprintf(sql,"update user set state = '%s' where id = %d",user.getState().c_str(),user.getId());
    MySQL mysql;

    if(mysql.connect()){
        if(mysql.update(sql)){
            return true;
        }
    }
    return false;
}

void UserModel::resetState(){
    //组装sql语句
    char sql[1024]="update user set state ='offline' where state='online'";
    MySQL mysql;

    if(mysql.connect())
    {
        mysql.update(sql);
    }
}