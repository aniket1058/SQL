select * from cd.bookings
select * from cd.facilities
select name,membercost from cd.facilities where membercost>0

-- -2)
select * from cd.facilities

-- -1)
select name,membercost from cd.facilities

--0)
select * from cd.facilities where membercost!=0

--1)
select facid,name,membercost,monthlymaintenance from cd.facilities 
where membercost<monthlymaintenance*1/50 and membercost>0

--2)
select * from cd.facilities where name like '%Tennis%'

--3)
select * from cd.facilities where facid in(1,5)

--4)
select memid,surname,firstname,joindate from cd.members where joindate >='2012-09-01'

--5)
select distinct(surname) from cd.members order by surname limit 10

--6)
select joindate from cd.members order by joindate desc limit 1

--7)
select * from cd.facilities
select count(*) from cd.facilities where guestcost >=10

--8)
select facid,sum(slots) as Total_slots from cd.bookings 
where starttime between '2012-09-01' and '2012-10-01'
group by facid 
order by sum(slots) 

--9)
select * from cd.bookings
select distinct(facid),sum(slots) as total_slots from cd.bookings
group by facid
order by sum(slots) desc
 limit 5

--10)
select cd.bookings.starttime,cd.facilities.name
from cd.facilities
inner join cd.bookings
on cd.facilities.facid=cd.bookings.facid
where cd.facilities.name in ('Tennis Court 1','Tennis Court 2')


--11)
select cd.bookings.starttime,cd.members.firstname,cd.members.surname
from cd.members
inner join cd.bookings
on cd.members.memid=cd.bookings.memid
where cd.members.firstname='David' and cd.members.surname='Farrell'





















