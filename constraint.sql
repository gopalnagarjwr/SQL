use avi;
create table student(sid int,email char(20));
insert into student values (2,null);
select * from student;
insert into student(sid) values(3);

create table student1(sid int,email char(20) default "hey");
insert into student1(sid) values(3);
select * from student1;

-- constraint =>condition => invaild data can not be insterted

create table student2
(sid int not null default 0 ,email char(20) default "papa");
insert into student2(sid,email)value (null,"user@");

create table student_unique
(sid int unique default 0 ,email char(20) default "gmail.com");
insert into student_unique(sid,email)values (1,"gopal@gmail.com");

-- unique use to compair data so data should not to repeated

create table employe (eid int primary key  ,ename char(20));
insert into employe (eid,ename) values(2,"goapl");
insert into employe (eid,ename) values(1,"goapl");
select * from employe;

create table employe1 (eid int  ,ename char(20), primary key (eid));

-- data type numerical , string , date 
-- numerical [(width)[unsigned][ZEROFILL]
-- -2,147,483,648 to 2,147,483,647( 4 byte storage)
-- singed values are postive and negative 
-- unsigned values are always postive 
-- tinyint=1, smallint=2,medumint=3
-- boolean true and false => tinyint  
create table ex3(eid int(2) zerofill);
insert into ex3 values(3);
select * from ex3;

create table test_bigdata(id BIGINT UNSIGNED);
insert into test_bigdata values(1243837873467567);

create table ex1(i bool);
insert into ex1 values (true), (false);
select * from ex1;




