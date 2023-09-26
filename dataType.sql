-- float, double, decimal

-- double size 8 byte
create table xyz (price double (5,2));
insert into xyz values(23.1);
insert into xyz values(50.12345);
select*from xyz;

 -- float size 4 byte
create table xy(val float ,price double);
insert into xy values(1.154613,45.659456);
insert into xy values(10.154,45.6599);
select*from xy;

-- Date formate
create table date (birthdate Date);
insert into date values('2005-05-10');
select*from date;
select concat(year(birthdate),' ',month(birthdate),' ',day(birthdate),' ',week(birthdate) ,' ',Dayname(birthdate) )as singleData  from date;
select date_format(birthdate,'%d,%c') from date;

create table dateTime (birthTime Time, birthdate Date);
insert into dateTime values( current_time(),current_date());
select*from dateTime;

-- Table update hone pr column update hoga 
 
create table caption (text varchar (100), createAt timestamp default current_timestamp,
                            updateAt timestamp on update current_timestamp);
			insert into caption (text ,createAt)values("hii",now());
	update caption set text="helo";
	select*from caption;
                            
