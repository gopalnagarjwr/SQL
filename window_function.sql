use sakila ;
create table employee(id int primary key auto_increment , depat varchar(50), salary int);

insert into employee(depat, salary) values('hr', 200),
   ('marketing', 100),
   ('dsa', 50),
   ('marketing', 150),
   ('hr', 120),
   ('dsa', 86);
   
   select avg(salary)from employee;
   
    select depat,avg(salary) from employee group by depat;
    
-- window aggergate 

select id ,depat, salary ,
avg(salary) over() as averageSalary,
max(salary) over() as maxSalary
 from employee;
 
 select id ,depat, salary ,
avg(salary) over(order by salary) as averageSalary,
max(salary) over() as maxSalary
 from employee;
 
  select id ,depat, salary ,
avg(salary) over(partition by depat) as averageSalary,
max(salary) over() as maxSalary
 from employee;
 
  select id ,depat, salary ,
sum(salary) over(order by depat) as averageSalary,
max(salary) over() as maxSalary
 from employee;
 
   select id ,depat, salary ,
sum(salary) over(partition by depat) as partSum,
sum(salary) over(partition by depat order by salary) as rollingSum
 from employee;
 
 select id ,depat, salary ,
avg(salary) over(order by depat) as depatAvg,
avg(salary) over() as normalAvg
 from employee;
 
  select id ,depat, salary ,
min(salary) over(partition by depat) as depatMin,
min(salary) over() as normalMin
 from employee;
 
  select id ,depat, salary ,
sum(salary) over(partition by depat order by salary) as rolling_depat_sum,
sum(salary) over(partition by depat ) as normalSum
 from employee;
 
 insert into employee(depat, salary) values('marketing', 100);
 
 select id ,depat, salary ,
rank() over(partition by depat order by salary) 
 from employee;
 
  select id ,depat, salary ,
rank() over(partition by depat order by salary) ,
dense_rank() over(partition by depat order by salary) 
 from employee;