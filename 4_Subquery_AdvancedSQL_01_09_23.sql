
--------------------------------01 September 2023------------------------------------------

select * from film
select rental_rate/replacement_cost from film
select rental_rate+replacement_cost from film
select rental_rate-replacement_cost from film
select rental_rate*replacement_cost from film
select rental_rate%replacement_cost from film
select rental_rate^replacement_cost from film
select |/replacement_cost from film
select ||/replacement_cost from film
select factorial(5)
select @replacement_cost from film
select rental_rate & replacement_cost from film

select round((rental_rate*replacement_cost),2) from film

select round(rental_rate/replacement_cost,4) *100 as percentage_cost from film

select 0.1 * replacement_cost as deposit from film

----------------------------------------------------------------------------------------

select * from customer
select length(first_name) from customer

select first_name||last_name from customer
select first_name||last_name||email||active from customer

select first_name||' '||last_name as full_name from customer
select upper(first_name)||' '||upper(last_name) as full_name from customer

select left(first_name,1)||last_name||'@gmail.com' from customer

select lower(left(first_name,1))|| lower(last_name)|| '@gmail.com' as custom_email
from customer


-------------------------------------------------------------------------------------------
----------------------------------------SUBQUERY-------------------------------------------
-------------------------------------------------------------------------------------------

--Query inside query
--SYNTAX
/*
select column_name
from table_name
where exists
(select column_name from
table_name where condition);
*/

select * from film
select avg(rental_rate) from film

select title,rental_rate
from film
where rental_rate>(select avg(rental_rate ) from film)

select * from rental
where return_date between '2005-05-29' and '2005-05-30'

select inventory.film_id
from rental
inner join inventory on inventory.inventory_id=rental.inventory_id
where return_date between '2005-05-29' and '2005-05-30'

SELECT film_id from inventory where inventory_id in
(select inventory_id from rental where 
return_date Between '2005-05-29' and '2005-05-30');

select film_id,title
from film
where film_id in 
(select inventory.film_id
from rental
inner join inventory
on inventory.inventory_id=rental.inventory_id
where return_date between '2005-05-29' and '2005-05-30')


























































