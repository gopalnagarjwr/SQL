use sakila;

select *from actor;
select*from  film_actor;

-- que.1  How many movies a user has worked
   -- Actor and film_actor table
    -- Number of movies should me more than 3

select film_actor.actor_id,count(film_actor.film_id) from  
actor inner join film_actor using(actor_id) group by film_actor.actor_id having count(film_actor.film_id)>3;

-- que. 2 Get all the information of user with the maximum and minium salary
  --  (id , name, email, salary)

 use employees;
   show tables;
 select  * from employees;
 select  * from salaries;
 
 select salaries.emp_no,employees.first_name,salaries.salary from employees inner join salaries using(emp_no) where 
 salaries.salary=(select max(salary)from salaries) or salaries.salary=(select min(salary)from salaries) ;
 
 

-- que. 3 Calculating the total population where the total population should be more
-- than 1000  and there should be more than 2 city in each code

use world;
 select*from city;
 select*from country;
 
 select CountryCode, sum(Population) from city group by CountryCode having count(Name)>2 and sum(Population) >= 1000 ;
 
-- que .4 Finding all the countrycode where
-- the number of city in each countrycode should be greater than or equal to the
-- city present in each countrycode ARE BGD NLD AFG  ( use country table

select countryCode from city group by countryCode 
having count(Name) >=any(select count(Name) from city where countryCode in('ARE',' BGD' ,'NLD' ,'AFG') group by countryCode);



 -- que.5  Get the id, salary and the salary_percent of every employee where salary_percent should be percentage with employee_id 2;
 
 use avi;
 
 create table company  (id int,name varchar(100), salary int, dept char);
 
 insert into company values(1,'rahul',50000,'sales'),
						  (2, 'vikas',40000,'hr'),
                          (3, 'vaibhav',5000,'peon'),
                          (4, 'ram',70000,'develper'),
                          (5, 'mohit',80000,'aws');
                          
                          
select salary, round(salary/(select salary from company where id=2)*100) as parcentage from company;

-- 6  use salaries table
-- find out the the max, sum, avg salary for each person in every month  from the from_date column
-- that should have the to_date year to be before 1999
  
  select *from salaries;
  
  select  emp_no, max(salary/12),sum(salary/12),avg(salary/12) from salaries where year(to_date)<1999 group by emp_no;

					
 