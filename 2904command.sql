use  excelr;
select * from superstore;
select Country,Sales from superstore where sales>100;
select country,sum(sales)Total from superstore where sales>100 group by country order by Total desc; 
select country,sum(sales)Total from superstore where sales>50000 group by country order by Total desc;
select country,sum(sales)Total from superstore group by country having total>50000 order by Total desc;

select country,sales,segment,profit,sum(sales-profit)Cost from superstore where country not in 
("france") and segment="consumer" and sales>200;

select country,sales,segment,profit,sum(sales-profit)Cost from superstore where country not in 
("france") and segment="consumer" and sales>200 group by country,segment having cost>10000;


SELECT country, segment, SUM(profit) AS Total_Profit, SUM(sales) AS Total_Sales, 
       SUM(sales - profit) AS Total_Cost
FROM superstore 
WHERE country <> 'France' AND segment = 'Consumer' AND sales > 200 
GROUP BY country, segment 
HAVING SUM(sales - profit) > 10000;

select `order date` ,monthname(`order date`)M,dayname(`order date`)D,quarter(`order date`)Quar,concat("Qtr=",quarter(`order date`))QuarQQ ,
week(`order date`)W,weekday(`order date`)WD,weekofyear(`order date`)WY from superstore order by `order date`;



SELECT 
    country,
    segment,
    SUM(sales) AS Total_sales,
    SUM(profit) AS Total_profit,
    CASE 
        WHEN SUM(sales) > 100000 AND SUM(profit) > 30000 THEN "Good"
        WHEN SUM(sales) > 50000 AND SUM(profit) > 10000 THEN "OK"
        ELSE "Bad"
    END AS results
FROM 
    superstore 
GROUP BY 
    country, segment;
