select * from bookings
select * from facilities
select * from members
--select the bookid facid from booking table
select bookid,facid from bookings
--using count
select count(bookid) from bookings
--select the guestcost from whose name is table tennis
select guestcost from facilities where name='Table Tennis'
--to select unique memid from booking table
select distinct(memid) from bookings
--using where clause along with not
select bookid ,facid,memid from bookings where not memid=0
--using and 
select name,membercost from facilities where monthlymaintenance=3000 and facid=4
--using order by
select * from members
select surname,firstname from members order by zipcode
select surname,firstname from members order by surname desc
--using limit
select * from facilities
select name from facilities order by guestcost limit 5
--using between
select name from facilities where initialoutlay between 4000 and 8000
--using not between
select name from facilities where initialoutlay not between 4000 and 8000
--using IN operator
select * from bookings
select bookid,starttime,slots,facid from bookings where facid in(3,8)
--using like name starting T
select * from facilities
select count(name) from facilities where name like 'T%'
select name from facilities where name like 'T%'
select name from facilities where name like '%1'
--Using group by
select * from bookings
select facid,avg(bookid) from bookings group by facid
--Using having 
select * from facilities
select  name ,sum(guestcost) from facilities
group by name having sum(guestcost)=25
--Using As clause
select * from members
select address as members_address from members
--Joins
--1)Inner join
select * from members inner join bookings on members.memid=bookings.memid
select * from facilities inner join bookings on facilities.facid=bookings.facid

--2)Full Outer Join
select * from facilities full outer join bookings on facilities.facid=bookings.facid

--3)Left Outer Join
select * from members left outer join bookings on members.memid=bookings.memid

--4)Right Outer join
select * from facilities right outer join bookings on facilities.facid=bookings.facid



