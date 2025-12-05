use stackly_db;

select * from actortable;
select * from actortable where age<55 or id>4;
select * from actortable where not age>50;
select * from actortable where age between 50 and 60 or id>2;
select * from actortable  where age=60 or age=70 or 
age=80 or age=100 or age=3 or age=4;
SELECT * FROM actortable WHERE NOT age IN 
(60,70,80,100,3,4,56,55,51,44,30);

select * from actortable where name like 'p%';
select * from actortable where name like '%n';
select * from actortable where name like '%a%';
select * from actortable where name like '%h%__';

select * from actortable order by name asc; 
select * from actortable limit 10 OFFSET 20;
