 use avi;
 show tables;
 
 select*from emp;
 
 create index em on emp(name);
 
 show indexes from emp;
 
 drop index em on emp;
 
 create index  combi on emp(id,name);
 
 insert into emp values(9,"govind",30000);
 
 create index Idindex on emp(id);