-- varchar & char 
-- char :- fixed size 
use dbs;

  create table test( emp1 char (5));
 insert into test values("ab1  ");
  select*from test;
 select emp1 ,length(emp1) from test;

 create table test1( emp1 varchar (3));
   insert into test1 values("b   ");
 select emp1 ,length(emp1) from test1;

 create table new1( emp1  varchar (3) ,age int check(age>18));
   insert into new1 values ("vik", 25);
   select*from new1;

  delete from test;
   delete from test where emp1="abs";
   select*from test;
 
 update new1 set age=30 where emp1="vik";
  select*from new1;
  
  truncate table new1;
 select*from new1;