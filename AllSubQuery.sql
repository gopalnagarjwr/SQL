use avi;
create table a( id int);
insert into a values (5);

create table b( id int);
insert into b values (20);

select *from a where id>any(select id from b);

select *from a where id>all(select id from b);

select *from a where id<all(select id from b);

select *from a where id in(select id from b);

use employees;
show tables;
select *from employees;
select *from titles;

select emp_no, title from employees inner join titles using(emp_no);

select emp_no, title from employees inner join titles using(emp_no)where title<>'manager';

select emp_no,first_name,last_name, title from employees inner join titles using(emp_no)where title='manager';

select employees.emp_no,first_name, last_name from employees,titles where(employees.emp_no=titles.emp_no);

select employees.emp_no,first_name, last_name,title from employees,titles where employees.emp_no=titles.emp_no and first_name='georgi'
and  last_name='klassen' and title='staff';

select mgr.emp_no,mgr.from_date from titles as mgr,titles as other where mgr.emp_no=other.emp_no;

select mgr.emp_no,year(mgr.from_date),year(other.from_date), mgr.title,other.title from titles as mgr,titles as other 
  where mgr.emp_no=other.emp_no and mgr.title='manager'
  and mgr.title<>other.title
  and year(mgr.from_date)= year(other.from_date);
  
  select emp_no ,year(from_date),title from titles where title<>'manager';

select emp_no ,year(from_date),title from titles where title='manager' 
and (emp_no ,year(from_date)) 
in ( select emp_no ,year(from_date) from titles where title<>'manager');

select*from salaries;
select salary, count(salary) from salaries
group by salary
having count(salary)>=(select count(salary) from salaries where salary=60117 group by salary) ;


