use excelr;
create table School (sno int primary key, sname varchar(20),grade char(1));
insert into School (sno,sname,grade)
values (1,"sri",'A'),(2,"Preethi",'B'),(3,"Vaishu",'C'),(4,"Jaya",'B');
select * from School;

delete from School where sno<2;

delete from School where sname="Vaishu";

update School set sname="sudha" where sname="Preethi";

alter table School add column age tinyint;

truncate table School;

drop table School;

show tables;

desc superstore;

alter table superstore modify column `Order Date` Date;

alter table superstore modify column `Ship Date` Date;

alter table superstore change column `Grand Total` Sales int;

select * from superstore;

select Country,Sales,Segment from superstore;

select distinct country,Segment from superstore
order by  country asc,segment asc;

select country,sales from superstore where country="spain";

select distinct country from superstore where country <> "france" and country <> "Germany";

select country,sales from superstore where country="france" and sales>=200 and sales<=300 order by sales ;

select country,sales from superstore where country="germany" and sales between 200 and 400 order by sales;

#----------------we want 2 countries and its sales----------------------

select country,sales from superstore where country in ("france","Germany") and sales between 200 and 300 order by sales;


select distinct country from superstore where country like "_______%";
select distinct country from superstore where country like "_______";
select distinct country from superstore where country not like "_______%";

