use sakila;
show tables;
select*from city;

-- Que 
create table test (id int,value varchar(20));
insert into test values(1,'10'),(2,'20%'),(3,'10'),(4,'40%');
select*from test;
select*from test where value  like  '%\%%';


select count(city) from city;
select distinct not country_id,city from city;

use avi;
 
 create table emp(id int ,name varchar(100),salar int);
 
 insert into emp values(1,'hr','1000'),(2,'Rr','2000'),(3,'mr','1000');
 
 
 create table dept(id int ,dp varchar (100));
 insert into dept values(1,'Hr'),(2,'marketing'),(3,'opps');
 
 create view empjoin as
 select*from emp inner join dept using(id);
 
 select*from empjoin;
 
 insert into  empjoin(dp) values('pk');
 
 insert into  empjoin(id,name,salar) values(4,'rahul',2500);
 
  insert into  empjoin(id,name,salar,dp) values(4,'rahul',2500,"game"); -- cannot be insert data in two tables in view because its complex view
 
 select*from dept