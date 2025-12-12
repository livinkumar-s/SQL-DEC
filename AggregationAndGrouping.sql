use stackly_db;


create table products(
id int primary key auto_increment,
name varchar(30) not null unique,
price float,
category varchar(10) not null
);

insert into products (name, category) values
("airpods","gadget");

select * from products;

select category,count(*) from products GROUP BY category;
select category,sum(price) from products GROUP BY category;
select category,avg(price) from products GROUP BY category
 HAVING not avg(price)>100;

select name,round(price) as roundedPrice from products;


select count(price) from products;
select sum(price) as sumOfPrice from products;
select max(price) from products;
select min(price) from products;
select avg(price) from products;

select avg(price) from products;


delete from products where id=9;

SELECT category, COUNT(*) AS total_products FROM products
GROUP BY category
ORDER BY count(*) ASC
Limit 1;
 