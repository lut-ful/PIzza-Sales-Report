select * from pizza_sales
SELECT column_name
FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_name = 'pizza_sales'

SELECT round(SUM(total_price),0) AS Total_Revenue FROM pizza_sales

select round(sum(total_price)/count(distinct order_id),0) as avg_order_value from pizza_sales

select sum(quantity) as total_pizza_sold from pizza_sales

select cast(cast(sum(quantity) as decimal(10,2))/cast(count(distinct order_id) as decimal(10,2))as decimal(10,2))  as avg_pizzas_per_order from pizza_sales

select datename(dw,order_date) as order_day, count(distinct order_id) as total_orders from pizza_sales group by datename(dw,order_date)

select datename(month,order_date) as order_month,count(distinct order_id) as total_orders from pizza_sales group by datename(month,order_date),month(order_date) order by month(order_date)

select pizza_size,cast(sum(total_price) as decimal(10,2))as total_revenue, cast(sum(total_price)*100/(select sum(total_price) from pizza_sales) as decimal(10,0)) as PCT from pizza_sales group by pizza_size

select pizza_category,sum(quantity) as total_quantity_sold from pizza_sales where day(order_date)=2 group by pizza_category

select top 10 pizza_name,sum(quantity) as pizza_sold from pizza_sales group by pizza_name order by pizza_sold desc

select top 10 pizza_name,sum(quantity) as pizza_sold from pizza_sales group by pizza_name order by pizza_sold asc

select top 10 pizza_name, count(distinct order_id) as total_orders from pizza_sales group by pizza_name order by total_orders desc

select top 10 pizza_name, count(distinct order_id) as total_orders from pizza_sales group by pizza_name order by total_orders asc


column names:
pizza_id,order_id,pizza_name_id,quantity,order_date,order_time,unisel_price,total_price,pizza_size,pizza_category,pizza_ingredients,pizza_name




