use stackly_db;

create table student(
id int primary key auto_increment,
name varchar(50) not null,
marks int not null,
dept varchar(10) not null
);


create table age(
id int primary key auto_increment,
age int not null,
studentId int not null,
foreign key (studentId) references student(id)
);

insert into student (name, marks, dept) values 
("leo",100,'ECE');

insert into age (age, studentId) values
(24,1),
(22,2),
(23,3),
(30,4),
(26,5),
(31,6),
(43,7),
(55,8),
(34,9);

select * from student;
select * from age;

select avg(marks) from student;


select * from student where 
marks>(select avg(marks) from student);

select studentId from age where age>30;

select * from student where 
id in (select studentId from age where age>30);

select * from student where 
marks > all (select marks from student where dept="CIVIL");

select * from student s1 where 
marks > (select avg(marks) from student where dept=s1.dept);


select * from student;