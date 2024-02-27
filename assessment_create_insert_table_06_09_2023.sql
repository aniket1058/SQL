create table students(
student_id serial primary key,
first_name varchar(100),
last_name varchar(100),
homeroom_number integer,
phone varchar unique not null,
email varchar(100) unique not null,
graduation_year integer)

select * from students

create table teachers(
teacher_id serial primary key,
first_name varchar(100),
last_name varchar(100),
homeroom_number integer,
department varchar(100),
email varchar(100) unique not null,
phone varchar unique not null)

select * from teachers

insert into students(student_id,first_name,last_name,homeroom_number,phone,email,graduation_year)
values(1,'Rahul','Galande',5,7775551234,'Rahul.galande@gmail.com',2023)

select * from students

insert into teachers(teacher_id,first_name,last_name,homeroom_number,department,email,phone)
values(1,'Chandrashekhar','Gogte',5,'Biology','Chandrashekhar.gogte@gmail.com',7775554321)

select * from teachers

