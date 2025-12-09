use stackly_db;

select name as actorName,
 age as actorAge from actortable;

select "Leo" as name, 22 as age, 180 as height;

select round(44.5) as result;
select ceil(44.1644) as result;
select floor(44.5644) as result;
select abs(-100) as result;
select mod(abs(power(-2,7)),3) as result;
select mod(90,3) as result;

select concat("His name is ",name) as result
from actortable;
select length(name) from actortable;
select length("Hello world") as result;
select upper("hello world") as result;
select lower("HELLO WORLD") as result;
select substring("HELLO WORLD",7,5) as result;

select trim("         hello world                ") 
as result;

select replace("Welcome to the SQL session","SQL","Python")
as result;

select curdate() as today;
select curtime() as time;
select now() as result;
select datediff("2026-01-01",curdate()) as result;

select * from actortable;

select concat("his name  ",upper(name),". his age is ",age)
 as actordetails from actortable;
 