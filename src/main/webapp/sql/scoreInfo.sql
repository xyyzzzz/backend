-- 学生表: 学号 密码 姓名
drop table if exists user;
create table user (
	id int(9) primary key auto_increment,
	name varchar(20),
	username varchar(20),
	password varchar(20)
) AUTO_INCREMENT = 100000000
character set = utf8;


insert into student(spwd,sname) values('1','小一'),('2','小二');
insert into course(cname, credit) values('高等数学',5),('大学英语',2),('线性代数',2),('大学计算机基础',1);
insert into optcou(sid,cid,score) values(100000000,100000000,80), (100000000,100000001,75), (100000000,100000002,80), (100000001,100000000,95);
insert into optcou(sid,cid) values(100000000,100000003);
