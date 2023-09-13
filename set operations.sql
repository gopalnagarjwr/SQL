-- use world ;
-- select *from  city;
-- select distinct(continent) from country;
-- select count(continent) from country order by continent;
-- select continent,count(*),sum(population) from country 
-- group by continent 
-- having count(*) >50;
  
   -- set opretions
   
  use sakila;
  
    -- union :- 
 
  select * from actor 
  union 
  select * from actor_info ;
 
 -- union all :-
  
   select first_name from actor 
  union all
  select first_name from actor_info;
  
   -- intersect :-
   
 select * from actor 
 intersect 
 select * from actor_info;

-- except :-

 select first_name from actor 
  except
  select first_name from actor_info;


  