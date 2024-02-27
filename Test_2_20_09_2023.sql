-- TEST 2:    20 SEPT 2023
-- SQL

-------------------------------------------------------------------------------------
/*
Q1. Write a SQL statement to create a table named jobs including columns 
job_id, job_title, min_salary, max_salary and check whether the max_salary
amount exceeding the upper limit 25000.
*/

create table jobs(
	job_id varchar(50),
	job_title varchar(50),
	min_salary int,
	max_salary int,
	email varchar(100),
	constraint check_max_salary check (max_salary >= 25000)
)
select * from jobs

----------------------------------------------------------------------------------------

/*Q2. Write a SQL statement to change the email column of 
the employees table with 'not available' for all employees.*/

update jobs set email='not available'
select * from jobs

---------------------------------------------------------------------------------------

/*Q3. Write a SQL statement to rename the table jobs to jobs_new.*/

alter table jobs rename to jobs_new;
select * from jobs_new;

---------------------------------------------------------------------------------------

/*Q.4 Write a SQL statement to add a column dept_id to the table locations.*/

alter table jobs_new add column dept_id int;
select * from jobs_new;

----------------------------------------------------------------------------------------

/*Q.5 Write a SQL statement to insert a record with your own
value into the table jobs_new against each column.*/

select * from jobs_new;
insert into jobs_new values('1','Developer','10000','30000','abc@gmail.com',20)

----------------------------------------------------------------------------------------

/*Q.6 Write a query to display the names (job_id,dept_id) .*/

select job_id,dept_id from jobs_new;

---------------------------------------------------------------------------------------

/*Q.7 Write a query to get the maximum total salaries payable to employees.*/

select sum(max_salary) from jobs_new;

---------------------------------------------------------------------------------------

/*Q.8 Write a query to get the average salary and number of
employees are working.*/

select avg(min_salary),avg(max_salary),count(job_id) from jobs_new;

---------------------------------------------------------------------------------------

/*Q.9 Create a table manager_details comprises of
manager_id,manager_name ,dept_id and Write a query 
to make a join with two tables jobs_new and manager_details*/

create table manager_details(
	manager_id int,
	manager_name varchar(50),
	dept_id int
)
select * from manager_details

select * from jobs_new 
inner join manager_details 
on jobs_new.dept_id=manager_details.dept_id

--------------------------------------------------------------------------------------

/*Q.10 Write a SQL subquery to find the emp_id 
of all employees  from jobs_new table who works in the IT department.*/


select * from jobs_new
select job_id from jobs_new 
where dept_id=(select dept_id from jobs_new where dept_id = 20)

--------------------------------------------------------------------------------------



