Use stackly_db;

create table actress (
id int primary key auto_increment,
name varchar(90)
);

insert into actress (name) values 
("Samantha"),
("Anushka Shetty"),
("Priyanka chopra");

create table actressage(
id int primary key auto_increment,
age int,
actressId int
);

select * from actress;
alter table actress change age actressAge int;
alter table actress rename column phone to mobile;

alter table actressage drop actressId;

alter table actress add column age int;
alter table actress add (email varchar(100), phone bigint);
alter table actress modify name varchar(50) not null unique;

alter table actressage add constraint fk_age
 foreign key (actressId) references actress(id);

alter table actressage modify column age int not null;

alter table actressage drop foreign key fk_age;

describe actressage;
 
describe actressage;

drop table actressage;

drop table actressage;
drop database temp;

drop table director;

create table director(
id int primary key auto_increment,
directorName varchar(40),
movieId int
);

select * from favmovie;
select * from director;

insert into director (directorName,movieId) 
values ("lokesh kanagaraj",2),("lokesh kanagara",3),("shankar",4);


