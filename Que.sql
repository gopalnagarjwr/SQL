use employees;
select *from employees;
show tables;

-- Que. 1)find to get employee no,first name and full name of every person where birth year is greater than the birth year of employee no 10003 
--        and the hire year is less than the hire date of 10005

 select emp_no, first_name,last_name, concat(first_name," ",last_name)as fullname ,birth_date,hire_date from employees
 where year(birth_date)>(select year(birth_date) from employees where emp_no=10003 ) 
 and year(hire_date)<(select year(hire_date) from employees where emp_no=10005) ;
 
 -- Que. 2) get the inforation of those user where is the hire year > among all these hire year of employee no 10003-10007
 
 select *from employees where year(hire_date)>all(select year(hire_date) from employees where emp_no between 10003 and 10007);
 
 -- Que. 3) find out the emp-no ,department no and department name of those user who has worked in my company for more than 28 years
 
select  departments.dept_name ,dept_emp.emp_no, dept_emp.dept_no  from departments 
 inner join dept_emp  on dept_emp.dept_no=departments.dept_no
 where departments.dept_no in (select dept_no from dept_emp where  TIMESTAMPDIFF( year,from_date,CURRENT_TIMESTAMP())>28);
 
 select *,TIMESTAMPDIFF( year,from_date,CURRENT_TIMESTAMP()) from dept_emp ;
 
-- Que. 4) find out the emp.no ,department.no and name of emp and next working monday from the date column

 select emp_no,dept_emp.dept_no, concat(first_name," ",last_name)as fullName,hire_date,
 ADDDATE(hire_date, INTERVAL 9-DAYOFWEEK(hire_date) day)as NextWorkingDate 
 from employees inner join dept_emp using(emp_no);
 
 -- Que. 5) find out the emp.name,emp.no.depaat.no.depart.name, and the year the total no of month in your company only for users where the total
 --		    no of months of working is > 33
 
select emp_no,dept_emp.dept_no,departments.dept_name,TIMESTAMPDIFF( month,hire_date,CURRENT_TIMESTAMP()) as months
from employees inner join dept_emp
using (emp_no) inner join departments using(dept_no)
 where TIMESTAMPDIFF( month,hire_date,CURRENT_TIMESTAMP())>400;
 
-- Que.6 
select*from Emp inner join emp_mail on emp.id =emp_mail.id;
 
 
 
 
