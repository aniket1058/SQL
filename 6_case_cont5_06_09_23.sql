
---------------------------------------06 Sept 2023------------------------------------------

--Case:

select * from customer

select customer_id,
case 
when (customer_id<=100) then 'Premium'
when (customer_id between 100 and 200) then 'Plus'
else 'Normal'
end
from customer

--Labeling:
select customer_id,
case 
when (customer_id<=100) then 'Premium'
when (customer_id between 100 and 200) then 'Plus'
else 'Normal'
end as Membership
from customer

select customer_id,
case customer_id
when 2 then 'winner'
when 5 then 'second_palce'
else 'normal'
end as raffle_results
from customer


select * from film
select rental_rate from film

select 
case rental_rate
when 0.99 then 1
else 0
end 
from film

select sum (case rental_rate
	when 0.99 then 1
	else 0
	end)
as number_of_bargains from film

select sum (case rental_rate
	when 0.99 then 1
	else 0
	end)
as bargains,
sum (case rental_rate
	when 2.99 then 1
	else 0
	end) as regular
from film

select sum (case rental_rate
	when 0.99 then 1
	else 0
	end)
as bargains,
sum (case rental_rate
	when 2.99 then 1
	else 0
	end) as regular,
sum(case rental_rate
   when 4.99 then 1
   else 0
   end) as premium
  from film
  

