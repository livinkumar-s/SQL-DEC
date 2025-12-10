use stackly_db;

create table cricketer(
id int primary key auto_increment,
name varchar(50) not null,
email varchar(100) unique not null,
isActive boolean default 1,
centuries int check (centuries>=20)
);

create table spouse(
id int primary key auto_increment,
name varchar(30) not null,
cricketerId int not null,
foreign key (cricketerId) references cricketer(id)
);

insert into cricketer (name, email, centuries) values
("Steve smith","ss@gmail.com",48);

insert into spouse (name, cricketerId) 
values ("Sakshi",7);
select * from cricketer;
select * from spouse;
