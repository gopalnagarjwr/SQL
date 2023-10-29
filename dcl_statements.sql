use avi;
select*from emp;
SELECT * FROM mysql.user;

select current_user();

create user 'my' identified by 'pass';

drop user 'my';

create user 'my' identified by 'pass';

grant all privileges on avi.emp to 'my' with grant option;

SHOW GRANTS FOR 'my';	
show databases;
 
 alter user 'my' identified by 'pass';
 
 set password for 'my' ='password';
 
 alter user 'my' account lock;
 
 alter user 'my' account unlock;
 
 rename user 'my' to 'ram';
 
 revoke all privileges, grant option from 'my'; 
 
 SHOW GRANTS FOR 'my';
 
 revoke select on avi.emp from my;
 
 grant select(id),insert(name) on avi.emp to 'my';
 
 grant select on avi.* to 'my'with grant option;
 