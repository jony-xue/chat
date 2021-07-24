#ifndef USER_H
#define USER_H
#include<string>

using namespace std;

class User{
public:
    User(int id=-1,string name="",string password="",string state="offline"){
        this->id=id;
        this->name=name;
        this->password=password;
        this->state=state;
    }
    void setId(int id){
        this->id=id;
    }
    void setName(string name){
        this->name=name;
    }
    void setPasswd(string passwd){
        this->password=passwd;
    }
    void setState(string state){
        this->state=state;
    }
    int getId(){
        return this->id;
    }
    string getName(){
        return this->name;
    }
    string getPasswd(){
        return this->password;
    }
    string getState(){
        return this->state;
    }

private:    
    int id;
    string name;
    string password;

    //状态
    string state;   

};


#endif