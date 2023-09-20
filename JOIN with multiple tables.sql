use sakila;
desc film;
desc inventory;
desc rental;

select film_id, title from film;

select film_id, last_update from  inventory;

select title ,inventory.film_id, inventory.last_update from film inner join inventory using(film_id);

select title ,count(rental_id) from film
inner join inventory using(film_id) 
inner join rental using(inventory_id) 
group by title having count(rental_id)>15 order by count(rental_id) desc limit 5;


select cust.customer_id, rental.rental_id, cust.email , inventory.film_id , film_category.category_id ,category.name from 
customer as cust
 inner join rental using(customer_id)
 inner join inventory using(inventory_id)
 inner join film_category using(film_id)
  inner join category using(category_id)
  where email ="JANE.BENNETT@sakilacustomer.org";
  
  select cust.email , film_category.category_id ,category.name from 
customer as cust
 inner join rental using(customer_id)
 inner join inventory using(inventory_id)
 inner join film_category using(film_id)
  inner join category using(category_id);
  
   select cust.email ,count( film_category.category_id )as count,category.name from 
customer as cust
 inner join rental using(customer_id)
 inner join inventory using(inventory_id)
 inner join film_category using(film_id)
  inner join category using(category_id)
  group by email, name having count>3;
  
  
  -- self join :-
  
  create table emp (emp_id int, ename varchar (30) , email varchar(50) , manager_id int);
  
  insert into emp values (1, "tushar" ,"tshar123@gmail.com" ,null);
  insert into emp values (2, "vikas" ,"vikas123gmail.com" ,101);
  insert into emp values (3, "vaibhav" ,"vaibhav@gmail.com" ,102);
  insert into emp values (4, "navi joura" ,"navi@gmail.com" ,103);
  
  select *from emp;
  select em.emp_id,em.ename, em.manager_id ,manager.emp_id,manager.ename from 
  emp as em ,emp as manager
  where em.manager_id=manager.manager_id;   
  
  
  select rental_duration from film 
where film_id  =1;
  
select film_id ,rental_duration from film 
where rental_duration =6;

-- single result nested query :-

select film_id ,rental_duration from film 
where rental_duration =(select rental_duration from film 
where film_id  =1);