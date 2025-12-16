use stackly_db;

select * from cricketer;
select * from spouse;
select * from jersey;

select c.name, s.name as spouse
 from cricketer c INNER JOIN spouse s ON  
c.id=s.cricketerId;

select * from cricketer c LEFT JOIN spouse s ON  
c.id=s.cricketerId;


select * from cricketer c RIGHT JOIN spouse s ON  
c.id=s.cricketerId;

create table jersey (
id int primary key auto_increment,
jerseyNum int not null,
cricketerId int not null,
foreign key (cricketerId) references cricketer(id)
);

insert into  jersey (jerseyNum,cricketerId) values
(18,1),
(45,2),
(10,3);


select c.name,s.name as spouse, 
j.jerseyNum from cricketer c inner join spouse s
on c.id=s.cricketerId inner join jersey j 
on j.cricketerId=c.id;

create table size (
id int primary key auto_increment,
size varchar(10)
);

insert into size (size) values ("l"),("xl");

select * from color;
select * from size;

select * from color cross join size;


select * from favmovie f right join director d on f.id=d.movieId
union
select * from favmovie f left join director d on f.id=d.movieId;
