select * from payment
select film_id from film where title=''

select country_id from country where country='India'


select count(category_id) from film_category
select max(amount) from payment

select * from actor
select first_name,last_name from actor

--single line comment

/*multi
line
comment
*/

--How to filter data

select * from film_actor
select actor_id from film_actor where film_id=67

select * from Customer
select first_name,last_name, email from customer
select distinct(last_name,first_name) from customer

--Ex.
select * from film
select distinct release_year from film

select * from inventory
select distinct store_id,film_id from inventory

select * from film
select distinct rating from film

--Ex.
--select count(name) from table
--select count(*) from table

--select count(distinct name) from table

select * from payment
select count(rental_id) from payment

select amount from payment
select distinct amount from payment
select count(distinct amount) from payment


--SELECT and WHERE are most fundametal SQL statements

select * from customer where first_name='Jared'

select * from film where rental_rate>4



















