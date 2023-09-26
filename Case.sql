desc payment;
select 
       case 
       when rental_id=76 then "hii"
       else rental_id
       end "newcol",
       rental_id,payment_id,amount from payment;
       
       select 
       case 
       when rental_id=76 then rental_id+10
       when rental_id>76 then rental_id+100
       else rental_id
       end "newcol",
       rental_id,payment_id,amount from payment;
       
       select mod(7,2) from dual;
       select round(177.439,-2) from dual;
       select truncate (177.439,-2) from dual