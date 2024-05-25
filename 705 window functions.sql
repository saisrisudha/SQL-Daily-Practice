use excelr;

#------we wt top 5,7.9 sales
select * from (
select country,sum(sales)Total,row_number() over(order by sum(sales)desc)RL from superstore group by country)RS where RL in (5,7,9);

select country,sum(sales)Total,row_number() over(order by sum(sales)desc)RL from superstore group by country;


select * from table_2;

alter table table_1 change `ï»¿Name` Name varchar(20) ;
alter table table_2 change `ï»¿Name` Name varchar(20) ;
alter table table_3 change `ï»¿Name` Name varchar(20) ;

 select  t.Name,t.score,`Mobile number`,City from table_1 t inner join table_2 on 
 t.Name=table_2.Name;
 
  select  t.Name,t.score,`Mobile number`,City from table_1 t left join table_2 on 
 t.Name=table_2.Name;
 
 
select * from city_list;
select * from country_list;
select * from manager_list;

delete from country_list where Zone="Zone";
alter table city_list change `ï»¿City` City varchar(25);
alter table country_list change `ï»¿Country` Country varchar(25);
alter table manager_list change `ï»¿Manger` Manager varchar(25);






drop table city_list,country_list,manger_list;





