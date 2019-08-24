#1设置客户端连接服务器端的编码
SET  NAMES UTF8;
#2丢弃数据库Baby_sql，如果存在的话
DROP DATABASE IF EXISTS Baby;
#3创建数据库xz，设置存储的编码为UTF8
CREATE DATABASE Baby CHARSET=UTF8;
#进入Baby数据库
USE  Baby;
#创建保存用户数据的表Baby_user
CREATE TABLE Baby_user(
   uid INT,             #编号
   uname VARCHAR(16),   #用户名
   upwd  VARCHAR(32),  # 000000  -> 0 密码
   email VARCHAR(32),  #邮箱
   phone VARCHAR(11),  #电话
   userName VARCHAR(5), #用户真实姓名
   gender   BOOL   #1男  0女
);
#插入数据
INSERT INTO Baby_user VALUES('1','lili','lili123456','lili@qq.com','18112345678','立立','1');
INSERT INTO Baby_user VALUES('2','tom','tom123456','tom@sina.com.cn','18512345678','汤姆','0');
#查询数据
SELECT * FROM Baby_user;
 #进入Baby数据库
USE  Baby;
 #1创建用户登录表  baby-login
 CREATE TABLE  Baby_login(
     id INT,
     uname VARCHAR(50),
     upwd VARCHAR(32)
 ); 
 #2添加二条测试数据
 INSERT INTO Baby_login VALUES(null,'lili',md5('123')); 
 INSERT INTO Baby_login VALUES(null,'hhai',md5('321'));      
  USE  Baby;
 #1创建用户登录表  baby-login
 CREATE TABLE  Baby_login(
     id INT,
     uname VARCHAR(50),
     upwd VARCHAR(32)
 ); 
 #2添加二条测试数据
 INSERT INTO Baby_login VALUES(null,'lili',md5('123')); 
 INSERT INTO Baby_login VALUES(null,'hhai',md5('321'));      
#查询数据
#SELECT * FROM Baby_login;    
