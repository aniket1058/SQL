----------------------------------28 AUGUST 2023--------------------------------------
--Order of Operations
--  from-->where-->select

select * from film
where rental_rate>4 and replacement_cost>=19.99
and rating='R'

select count(title) from film
where rental_rate>4 and replacement_cost>=19.99
and rating='R'

select count(*) from film
where rental_rate>4 and replacement_cost>=19.99
and rating='R'

select count(*) from film where rating='R' or rating='PG-13'

--Challenge 1
select email from customer
where first_name='Nancy' and last_name='Thomas'

--Challenge 2
select description from film where title='Outlaw Hanky'

--Challenge 3
select phone from address where address='259 Ipoh Drive'

--Order By-- Ascending Descending Order
--Syntax:  select column_1,column_2 from table order by column_1 asc/desc

select * from customer
order by first_name

select * from customer
order by first_name desc

select * from customer
order by store_id asc

select store_id,first_name,last_name from customer
order by store_id,first_name

select store_id,first_name,last_name from customer
order by store_id desc,first_name asc


--LIMIT COMMAND--
select * from payment
order by payment_date desc
limit 10

select * from payment
where amount!=0.00
order by payment_date desc
limit 10


--Challenge--
select customer_id from payment
order by payment_date asc
limit 10

--Challenge--
select length,title from film
order by length asc
limit 5

--Challenge--
select count(title) from film
where length <=50

--Between Operator--
select * from payment
where amount between 8 and 9

select count(*) from payment
where amount between 8 and 9

select count(*) from payment
where amount not between 8 and 9

select * from payment
where payment_date between '2007-02-01' and '2007-02-15'


--IN operator
select * from payment
where amount in (0.99,1.98,1.99)

select count(*) from payment
where amount in (0.99,1.98,1.99)

select count(*) from payment
where amount not in (0.99,1.98,1.99)

select * from customer
where first_name in ('John','Jake','Julie')

select * from customer
where first_name not in ('John','Jake','Julie')

-- LIKE operator (%string%)
select title from film where title like '%law%'

-- https://www.postgresql.org/docs/12/functions-matching.html

select * from customer where first_name like 'J%'

select count(*) from customer where first_name like 'J%'

select * from customer 
where first_name like 'J%' and last_name like 'S%'

select * from customer 
where first_name ilike 'J%' and last_name like 'S%'

select * from customer where first_name like '_her%'

select * from customer where first_name like 'A%'

select * from customer where first_name like 'A%' order by last_name

select * from customer where first_name like 'A%' and last_name not like 'B%'


--Challenge
select count(amount) from payment where amount >5.00

--Challenge
select count(first_name) from actor where first_name like 'P%'


-------------------------------------29 AUGUST 2023----------------------------------------

--Challenge
select count(distinct(district)) from address 

--Challenge
select distinct(district) from address 

--Challenge
select * from film
select count(title) from film where rating='R' and replacement_cost between 5 and 15

--Challenge
select count(*) from film where title like '%Truman%'


-----------------------------------AGGREGATE FUNCTIONS--------------------------------------
-- https://www.postgresql.org/docs/current/functions-aggregate.html

select min(replacement_cost) from film
select max(replacement_cost) from film
select min(replacement_cost),max(replacement_cost) from film

select avg(replacement_cost) from film   --o/p:19.9840000000000000

select round(avg(replacement_cost),2) from film  --o/p:19.98 rounded upto two decimal points

select round(avg(replacement_cost),4) from film  --o/p:19.9840 upto 4 digits

select sum(replacement_cost) from film


----------------------------------------GROUP BY--------------------------------------------

--syntax : select category_col, agg(data_col) from table group by category_col

select * from film
select rating,sum(replacement_cost) from film group by rating

select * from payment

select customer_id from payment group by customer_id order by customer_id

select customer_id,avg(amount) from payment
where customer_id in ('4','5')       --- 'where' should not be preferred
group by customer_id order by customer_id

select customer_id,avg(amount) from payment
group by customer_id order by customer_id
limit 10

select customer_id,sum(amount) from payment
group by customer_id order by sum(amount) desc

select customer_id,staff_id,sum(amount) from payment group by customer_id,staff_id
order by customer_id desc

select date(payment_date), sum (amount) from payment group by date(payment_date)
order by date desc

--Challenge
select * from payment
select staff_id,count(amount) from payment group by staff_id

--Challenge
select * from film
select rating,round(avg(replacement_cost),4) from film group by rating

--Challenge
select * from payment
select customer_id,sum(amount) from payment group by customer_id order by sum(amount) desc
limit 5


------------------------------------------HAVING-------------------------------------------

--Ex: select company,sum(sales) from finance_table group by company having sum(sales)>1000

-- 'having' should be used after group by
-- 'where' should be used before group by

select customer_id,sum(amount) from payment where customer_id not in (184,87,477) 
group by customer_id

select customer_id ,sum(amount) from payment group by customer_id having sum(amount)>100

select store_id ,count(customer_id) from customer group by store_id

select store_id ,count(*) from customer group by store_id having count(*) >300

select store_id ,count(customer_id) from customer group by store_id having count(*) >300


--Challenge
select customer_id,count(amount) from payment group by customer_id having count(amount) >=40

--Challenge
select * from payment
select customer_id,sum(amount) from payment where staff_id=2 group by customer_id 
having sum(amount)>=100

--1)Challenge
select customer_id,sum(amount) from payment where staff_id=2 group by customer_id
having sum(amount)>=110

--2)Challenge
select count(*) from film where title like 'J%'

--3)Challenge
select first_name,last_name from customer where first_name like 'E%' 
group by customer_id
having address_id<500
order by customer_id desc
limit 1










