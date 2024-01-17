-- dql
use sakila;

-- to show databaes available 
show databases;

-- to show tables in database 
show tables;

-- info about table
describe actor;
 
-- show the data of table 
select * from actor;

-- we can show a column multiple time
select first_name,first_name newcolumn from actor;

-- where clause
select * from actor where actor_id <=3; 

select * from actor where first_name = "Nick";

select * from actor where actor_id not in (2,4,55,6,8);

select * from actor where first_name like "%GARY%";

use sakila;

select customer_id , first_name 
from customer
where (first_name = "patricia" or first_name = "mary" and first_name = "elizabeth" ) and customer_id = 2;

select * from customer order by 2,4;

select concat_ws(" ",first_name,last_name) from customer;

select first_name, substr(first_name,5,1) from customer;

select first_name, instr(first_name,"ar") from customer;

select trim(leading " " from "     heloo        ") from dual;
select trim(trailing " " from "     heloo        ") from dual;

-- general function / null handling functions
use sakila;
select * from address;

select address_id ,address2,ifnull(address2,0)     from address; 


select actor_id, first_name , 
			case 
				when actor_id >12 then "actor id is more than 12"
                when actor_id between 5 and 7 then "id 5 and7"
				when actor_id >2 then  "actor id is more than 2"
			else "no condition verified"
            end "new"
from actor;
