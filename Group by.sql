 use sakila;
  select first_name ,concat("Mr " ,first_name) as full_name from actor order by full_name;
-- group by  
  select first_name , length(first_name) from actor;
   
   -- multiple row  =>output
   -- similar => opretions
    -- group => group opretions
    
   use world;
    select * from country;
    create table t1 (id int ,city varchar (20)); 
    insert into t1 values (1,"hii"),(2,"hii12"),(null,"hii3");
    select count(*) from t1;
     select count(id) from t1;
     select  distinct city from t1;
     select count(distinct city) from t1;
    
    select * from city where countrycode="afg";
    select countrycode, count(id) from city  group by countrycode;
     select countrycode, count(id), sum(population)as total_population from city  group by countrycode;
      select countrycode , count(id), sum(population)as total from city group by countrycode  having sum(population)>500 order by total;
      
      select countrycode ,sum(population) from city  where population >200000 group by countrycode;
         select countrycode ,sum(population) from city group by countrycode;
       
       select * from country;
       select continent, count(*) from country group by continent;
       select continent, region, count(*) from country where continent="europe" group by continent, region;
        select continent, region, count(*) from country where continent="europe" group by continent, region order by count(*);