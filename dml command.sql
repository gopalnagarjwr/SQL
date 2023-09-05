-- DML Command  INSERT :-

   select * from language ;
   insert ignore into language values (null ,"vikas",now());
   insert ignore into language (last_update,name ,language_id) values (now() ,"ghan",null);
   insert ignore into language (last_update,name) values (now() ,"ghan");
   insert ignore into language values (null ,"vikas1",now()),(null ,"vikas2",now()),(null ,"vikas3",now());
   insert into language set language_id=20,name ="golu";

-- NEW DATABASE CREATE :-
 
   create database if not exists dbs;
   use dbs;
   
-- ddl statement create :- table ,index ,view ;

  create table emp(id int, name char(30), email varchar (50));
   desc emp;
 -- values insert karna :-
 
  insert into emp values (1, "persone", "persone123@gmail.com");
  select * from emp ;
  insert into emp values (1, "persone", null);

--  NEW TABLE CREATE :-
  
  create table emp1(id int default 0, name char(30), email varchar (50));
  insert into emp1 (name,email,id)  values( "persone", "persone123@gmail.com",null);
   select * from emp1 ;
   
 --  NEW TABLE CREATE :-
 
 create table company (emp_id int primary key auto_increment, name varchar (50) default "not avilable", login_time timestamp default now() );