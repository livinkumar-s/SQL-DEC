use stackly_db;

drop table traineerecord;

CREATE TABLE traineerecord(
traineeId int primary key auto_increment,
name varchar(90) not null,
age int not null,
favPortion text,
phone bigint unique not null
);

alter table traineerecord add column email 
varchar(100) not null unique;

insert into traineerecord (name,age,email,phone,favPortion) 
values
("Livinkumar",22,"lk@hotmail.com",8676576546,"None");

select * from traineerecord;

CREATE VIEW traineeContact AS SELECT 
phone, email from traineerecord;

select * from traineeContact;