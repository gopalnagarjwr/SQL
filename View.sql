use avi;
show tables;
-- vertual view 
desc tb;

create view tb_view as
select p_price,s_price from tb;

select * from tb_view;

insert into  tb_view values(500,1000);

alter view tb_view as  select * from tb where p_price=2500;

drop view tb_view;

  
  
-- create table:- movie name ,mobvie duretion and price ,id 
-- create table :- coustomer id ,name, date


create table movies(id int primary key ,m_name varchar(150), m_duretion time ,price int);
create table M_Costomer (id int unique not null,c_name varchar (150), date date , foreign key(id) references movies(id));

insert into movies values (1, 'Movie 4', '02:30:00', 120),
    (2, 'Movie 2', '02:15:00', 250),
    (3, 'Movie 3', '02:45:00', 200),
    (4, 'Movie 4', '02:10:00', 220),
    (5, 'Movie 5', '03:00:00', 230);
    
    insert into M_Costomer values (6, 'rahul sharma', '2023-07-03'),
    (7, 'vikasi jain', '2023-10-04'),
    (8, 'jobe', '2023-10-05'),
    (9, 'tony', '2023-11-06'),
    (10, 'sharma', '2023-06-07');
    
    
    select *from movies;
    select *from M_Costomer;
    desc movies;
    desc M_Costomer;
    
    --  1) get all customer id, customer name and movie name jo kisi bhi customer ne dekhi hai
    
     select c.id,c.c_name, m.m_name from movies as m inner join M_Costomer as c using (id);
     
     --  2) get all info of customer whether they have watched movie or not
     
      select c.id,c.c_name, c.date from movies as m right join M_Costomer as c using (id);
     
  -- 3) get the customer id and total number of movies that have been watched by a user after year 2000
   
	SELECT c.id, COUNT(DISTINCT m.m_name) AS total_movies_watched
FROM  movies as m 
INNER JOIN M_Costomer as c using (id)
WHERE c.date > 2000
GROUP BY c.id;

-- 4) find total amount spent by user to watch movie and average time duration he has watched movie

SELECT c.id, SUM(m.price) AS total_amount_spent, AVG(m.m_duretion) AS average_watch_duration
FROM M_Costomer as c
INNER JOIN movies as m using(id)
GROUP BY c.id
ORDER BY total_amount_spent DESC;

-- 5) get only the customer id, customer name of those who has watched the max number of movies

SELECT c.id, c.c_name
FROM M_Costomer as c
INNER JOIN (
  SELECT c.id, COUNT(DISTINCT m.id) AS total_movies_watched
  FROM M_Costomer as c
  INNER JOIN movies as m using(id)
  GROUP BY c.id
  ORDER BY total_movies_watched DESC
  LIMIT 1
) AS max_movies_watched using(id) 
   limit 0,1000;

