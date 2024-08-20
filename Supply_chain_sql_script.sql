create database supply_chain;
use supply_chain;
select * from data;
desc data;
select total_cost from data;
select sum(total_sales) from data;
select round(sum(total_sales)) as Total_sales from data;


-- sum of Total Profit

select round(sum(total_profit)) as total_profit from data;

-- region wise sales

select store_region,total_cost from data;
select store_region ,round(sum(total_sales))as sou  from data group by store_region order by  sou desc;

-- product wise sales

select * from data;

select product_family ,round(sum(total_sales)) as sum_total_sales 
from data 
group by product_family
order by sum_total_sales desc;

-- top 5 product wise sales
select product_family ,round(sum(total_sales)) as sum_total_sales 
from data 
group by product_family
order by sum_total_sales desc
limit 5;

-- year wise sales

select year,sum(total_sales) from data group by year ;

-- quarter wises sales

select quarter,sum(total_sales) from data group by quarter;

-- state wise sales

select store_state,sum(total_sales) from data group by store_state;

-- top 3 states wise sales

select store_state,sum(total_sales) as total from data group by store_state order by total desc limit 3;

-- total inventory

select sum(quantity) as total_inventory from data;

-- inventory value 

select sum(price) as inventory_value from data;


