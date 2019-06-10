-- 学生表: 学号 密码 姓名
drop database if exists delicious;
create database delicious;
use delicious;
drop table if exists user;
create table user (
	id int(9) primary key auto_increment,
	name varchar(20),
	username varchar(20),
	password varchar(32)
) AUTO_INCREMENT = 100000000
character set = utf8;
