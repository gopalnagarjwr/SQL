use avi;
show tables;
insert into emp values (1,"ram",100000),(2,"raj",80000),
                       (3,"vikas",70000),(4,"vaibhav",50000);
select  *from emp;
-- perform rollup oprations 

select name, sum(salar) from  emp group by name with rollup ; -- only grand total 

select id,name, sum(salar) from  emp group by id,name with rollup ; -- sub-total and grand total
 