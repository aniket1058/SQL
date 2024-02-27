
----------------------------------------31 August 2023--------------------------------------

-- Use of 'as' clause

select customer_id,sum(amount) 
from payment
group by customer_id

select customer_id,sum(amount) as total_spend
from payment
group by customer_id

select customer_id,sum(amount) 2q
from payment
group by customer_id
having sum(amount)>100

select customer_id,sum(amount) as total_spend
from payment
group by customer_id
having sum(amount)>100

select customer_id,amount as new_name from payment where amount>2

--syntax:- select * from registrations
--         inner join logins
--         on registrations.name=logins.name


--Ex.
select * from payment inner join customer on payment.customer_id=customer.customer_id

--for selecting specific columns
select payment.payment_id,payment.customer_id,customer.first_name
from payment inner join customer on payment.customer_id=customer.customer_id


--------------------------------Syntax for full outer join----------------------------------
/*
select * from tableA
full outer join tableB
on tableA.coll_match=tableB.col_match
*/

--Ex.
select * from registrations full outer join logins on registrations.name=logins.name

select * from customer full outer join payment on customer.customer_id=payment.customer_id
where customer.customer_id is null or payment.customer_id is null


--------------------------------Syntax for left outer join---------------------------------
/*
select * from tableA
left outer join tableB
on tableA.col_match=tableB.col_match
*/

--Ex:
select * from registrations
left outer join logins
on registrations.name=logins.name

----------Syntax for removing null rocords------------
/*
select * from tableA
left outer join tableB
on tableA.col_match=tableB.col_match
where tableB.id is null
*/

--Ex.
select * from registrations
left outer join logins
on registrations.name=logins.name
where login.log_id is null

select film.film_id,title,inventory_id,store_id
from film
left join inventory
on inventory.film_id=film.film_id

select film.film_id,title,inventory_id,store_id
from film
left join inventory
on inventory.film_id=film.film_id
where inventory.film_id is null


-------------------------------------RIGHT JOIN-------------------------------------------

--Syntax
/*
Select * from tableA
right outer join
*/






--Challenge
select district,email 
from address 
inner join customer
on address.address_id=customer.address_id
where district='California'

--Challenge
select title,first_name,last_name
from film_actor
inner join actor
on actor.actor_id=film_actor.actor_id 
inner join film
on film.film_id=film_actor.film_id
where first_name='Nick' and last_name='Wahlberg'



------------------------------------------------------------------------------------------
--                                    ADVANCED SQL                                      --
------------------------------------------------------------------------------------------

show all
show timezone
select now()
select timeofday()
select current_date

/*
Extracting information from time based data type using
1) extract()
2) age()
3) to_char()
*/

/*
1) EXTRACT()
Allows you to extract orobtain a sub component of date value
-Year
-Month
-Day
-Week
-Quarter
Syntax:- extract(year from date_col)

age():
		-> calculates and return the current age given a timestamp
		-> usage: 
			-> age(date_col)
		-> returns 
			-> 13 year
			
to_char():
		-> General function to convert data types to text
		-> usefull for timestamp formatting usage
		-> usage:
		    -> to_char(date_col,'mm-dd-yyyy')
*/
----------------------------------------------------------------------------------------

select * from film
select * from inventory

select film.film_id,title,inventory_id,store_id from film
left join inventory on inventory.film_id = film.film_id
where inventory.film_id is null

--challenge--
select * from customer
select * from address

select district,email from address inner join customer 
on address.address_id = customer.address_id where district = 'California'

select * from actor
select * from film_actor

select * from actor
inner join film_actor on actor.actor_id = film_actor.actor_id
inner join film on film_actor.film_id = film.film_id 
where first_name = 'Nick' and last_name = 'Wahlberg'

show all 
show timezone
select now()
select timeofday()
select current_date
--let's explore extracting information from a time based data type using:
--extract()
--age()
--to_char()

/* extract(): 
	allow you to 'extract' or obtain a sub-component of a date value
	
	-> year
	-> month
	-> day
	-> week
	-> quarter
	
	syntax: -> extract(year from date_col)
	
	age():
		-> calculates and return the current age given a timestamp
		-> usage: 
			-> age(date_col)
		-> returns 
			-> 13 year
			
	to_char():
		-> General function to convert data types to text
		-> usefull for timestamp formatting usage
		-> usage:
		    -> to_char(date_col,'mm-dd-yyyy')
			
*/

select * from payment
select extract(year from payment_date) as myyear from payment

select extract(month from payment_date) as pay_month from payment

select extract(Quarter from payment_date) as pay_month from payment

select * from payment

select age(payment_date) from payment

select to_char(payment_date,'')
from payment

select to_char(payment_date,'MM/DD/YYYY')
from payment

------------------------------------------challenge---------------------------------
--During which months did payments occur?
-- format your answer to return back.

select distinct(to_char(payment_date,'month')) from payment

--Challenge
--How many payments occured on Monday?
select * from payment
select count(*) from payment where extract(dow from payment_date)=1



















