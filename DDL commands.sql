show databases;
create database excelr;
use excelr;
show tables;
create table student(sno int,sname varchar(20),class int , section char(1));
desc student;
select * from student;
INSERT INTO student (sno, sname, class, section)
VALUES
(1, 'ragini', 7, 'A'),
(2, 'radha', 8, 'B'),
(1, 'Rudra', 7, 'C'),
(1, 'revathi', 9, 'A');
alter table student add column age int;
alter table student modify column age tinyint;
INSERT INTO student (age) VALUES (20), (25), (22), (19);
alter table student drop column age;

use excelr;
CREATE TABLE stu (
    sno INT PRIMARY KEY,
    sname VARCHAR(20) NOT NULL,
    age TINYINT CHECK (age >= 18)
);

INSERT INTO stu (sno, sname, age) VALUES (1, 'sri', 19), (2, 'Preeth', 20);
INSERT INTO stu (sno, sname, age) VALUES (2, 'Preeth', 20);

select * from stu;


ALTER TABLE stu
ADD gender CHAR(1) CHECK (gender IN ('F', 'M'));

INSERT INTO stude (sno, sname, age, gender) VALUES (1, 'eth', 60, 'F');
INSERT INTO stude (sno, sname, age, gender) VALUES (2, 'sssff', 40, 'M');
INSERT INTO stude (sno, sname, age, gender) VALUES (3, 'ssvssff', 30, 'F');


INSERT INTO stude (sno, sname, age, gender) VALUES (4, 'ssvssfhhj', 30, 'P');

select * from stude;

CREATE TABLE stude (
    sno INT PRIMARY KEY,
    sname VARCHAR(20) NOT NULL,
    age TINYINT CHECK (age >= 18),
    gender CHAR(1) CHECK (gender IN ('F', 'M'))
);

drop table stude;
select * from stude;

CREATE TABLE stu1 (
    sno INT PRIMARY KEY,
    sname VARCHAR(20) NOT NULL
);
INSERT INTO stu1 (sno, sname) VALUES (1, 'eth');
INSERT INTO stu1 (sno, sname) VALUES (2, 'sssff');
INSERT INTO stu1 (sno, sname) VALUES (3,'sscddgggsff');
INSERT INTO stu1 (sno, sname) VALUES (4,'aaaaaaadddf');




CREATE TABLE stuuuuu1 (
    sno INT PRIMARY KEY auto_increment,
    tot datetime
);

select * from stu1;
select * from stuuuuu1;

delete from stu1 where sno=1;

create table pop (sno int primary key auto_increment,
name varchar(25) not null,
gender char(1) check(gender in ('M','F')),
age int 
 );
 
 select * from pop;

truncate table pop;
 
 insert into pop values (1,"Sri",'M',25),(2,"Raj",'M',50),(3,"irazi",'F',15),(4,"Srisu",'F',32),(5,"Sri",'M',22);
 
 select * ,new_function(age)Statuss from pop;
