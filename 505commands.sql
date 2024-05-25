use excelr;
select year(`order date`)Dt ,sum(sales) from superstore
group by (`order date`)
order by (`order date`) asc;

select month(`order date`)MH,monthname(`order date`)Mth,sum(sales)Totalsales from superstore
group by 1,2
order by 1 asc;


SELECT MONTH(`order date`) AS MH,
       MONTHNAME(`order date`) AS Mth,
       SUM(sales) AS Totalsales 
FROM superstore 
WHERE YEAR(`order date`) = 2022 
GROUP BY 1,2 
HAVING Totalsales BETWEEN 20000 AND 400000
ORDER BY 1 ASC; 

select YNA,Totalsales from (
select month(`order date`)YAW ,monthname(`order date`) YNA,sum(sales) Totalsales from superstore
group by 1,2)hi
order by YAW;


select DAAYNA,Totalsales from (
select dayofweek(`order date`)DAW ,dayname(`order date`) DAAYNA,sum(sales) Totalsales from superstore
group by 1,2)hi
order by DAW;

select DAAYNA,Totalsales from (
select weekday(`order date`)DAW ,dayname(`order date`) DAAYNA,sum(sales) Totalsales from superstore
group by 1,2)hi
order by DAW;

select if(weekday(`order date`)>4,"Weekday","Weekend")DAW,sum(sales) Totalsales from superstore
group by 1;



SELECT 
    IF(WEEKDAY(`order date`) BETWEEN 2 AND 6, 'Weekday', 'Weekend') AS DAW,
    SUM(sales) AS Totalsales 
FROM 
    superstore
GROUP BY 
    DAW;
    
    select 
    case when 
    weekday(`order date`)  in (2,6) then "Weekends"
    else "weekdays" end dname,sum(sales)Total from superstore
    group by 1;
    
     select dayname(`order date`)dn,
    case when 
    weekday(`order date`)  in (2,6) then "Weekends"
    else "weekdays" end dname,sum(sales)Total from superstore
    group by 1,2
    order by 1;
    
      select dayname(`order date`)dn,
    case when 
    weekday(`order date`)  in (2,6) then "Weekends"
    else "weekdays" end dname,sum(sales)Total from superstore
    group by 1,2
    order by 1;
    
        
    

