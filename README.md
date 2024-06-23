# Pizza Sales Report

## Overview
This report provides a comprehensive analysis of pizza sales data using Power BI, with data retrieved from an SQL Server. The analysis covers key performance indicators (KPIs), daily and monthly sales trends, sales distribution by category and size, and performance metrics for the best and worst-selling pizzas.
Navigate /Requirements_&_sql_results.docx for list of KPI's, charts and visualizations, data retrieval, and data verification.
![Home page](https://github.com/lut-ful/PIzza-Sales-Report/assets/108027559/622a1f39-6dd9-4bc1-b3b8-ae337c9e91cd)
![Best-Worst sales page](https://github.com/lut-ful/PIzza-Sales-Report/assets/108027559/e7d1b1e4-0965-4f9e-a8f7-a538bb193757)

## Data Retrieval
The data for this report was retrieved from an SQL Server database using Microsoft SQL. The SQL queries used were verified to ensure data accuracy and completeness. The dataset includes detailed information on pizza orders, such as order dates, pizza categories, pizza sizes, revenue, and quantity sold.

## Key Performance Indicators (KPIs)
1. Total Revenue: The total revenue generated from pizza sales.
2. Average Order Value: The average value of each order, calculated by dividing the total revenue by the total number of orders.
3. Total Pizzas Sold: The total number of pizzas sold.
4. Total Orders: The total number of orders placed.
5. Average Pizzas per Order: The average number of pizzas per order, calculated by dividing the total number of pizzas sold by the total number of orders.

## Charts and Visualizations
1. Daily Trend for Total Orders: A line chart showing the daily trend of total orders over the reporting period. This chart helps identify patterns and fluctuations in daily sales.
2. Monthly Trend for Total Orders: A line chart displaying the monthly trend of total orders. This visualization provides insights into seasonal variations and long-term trends.
3. Percentage of Sales by Pizza Category: A pie chart representing the percentage of sales by pizza category (e.g., Vegetarian, Meat, Seafood). This chart highlights the popularity of different pizza categories.
4. Percentage of Sales by Pizza Size: A pie chart showing the percentage of sales by pizza size (e.g., Small, Medium, Large). This visualization helps understand customer preferences for pizza sizes.
5. Total Pizzas Sold by Pizza Category: A bar chart displaying the total number of pizzas sold by category. This chart provides a detailed breakdown of sales performance by category.
6. Top 5 Best Sellers by Revenue, Total Quantity, and Total Orders: Three bar charts highlighting the top 5 best-selling pizzas based on revenue generated, total quantity sold, and total number of orders.
7. Worst Sellers by Revenue, Total Quantity, and Total Orders: Three bar charts showcasing the worst-selling pizzas based on revenue generated, total quantity sold, and total number of orders.

## Data Verification
The SQL queries used to retrieve the data were meticulously verified to ensure accuracy. </br>
Navigate /Requirements_&_sql_results.docx for the SQL queries used.

<!--
### Sample SQL Queries

#### Total Revenue
```sql
SELECT SUM(total_price) AS TotalRevenue
FROM Orders;
```

#### Average Order Value
```sql
SELECT AVG(total_price) AS AverageOrderValue
FROM Orders;
```

#### Total Pizzas Sold
```sql
SELECT SUM(quantity) AS TotalPizzasSold
FROM OrderDetails;
```

#### Total Orders
```sql
SELECT COUNT(order_id) AS TotalOrders
FROM Orders;
```

#### Average Pizzas per Order
```sql
SELECT AVG(quantity) AS AveragePizzasPerOrder
FROM (SELECT order_id, SUM(quantity) AS quantity
    FROM OrderDetails
    GROUP BY order_id) AS OrderQuantities;
```

#### Daily Trend for Total Orders
```sql
SELECT order_date, COUNT(order_id) AS TotalOrders
FROM Orders
GROUP BY order_date
ORDER BY order_date;
```

#### Monthly Trend for Total Orders
```sql
SELECT YEAR(order_date) AS Year, MONTH(order_date) AS Month, COUNT(order_id) AS TotalOrders
FROM Orders
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY Year, Month;
```

#### Percentage of Sales by Pizza Category
```sql
SELECT category, SUM(quantity) * 100.0 / (SELECT SUM(quantity) FROM OrderDetails) AS PercentageSales
FROM OrderDetails
JOIN Pizzas ON OrderDetails.pizza_id = Pizzas.pizza_id
GROUP BY category;
```

#### Percentage of Sales by Pizza Size
```sql
SELECT size, SUM(quantity) * 100.0 / (SELECT SUM(quantity) FROM OrderDetails) AS PercentageSales
FROM OrderDetails
JOIN Pizzas ON OrderDetails.pizza_id = Pizzas.pizza_id
GROUP BY size;
```

#### Total Pizzas Sold by Pizza Category
```sql
SELECT category, SUM(quantity) AS TotalPizzasSold
FROM OrderDetails
JOIN Pizzas ON OrderDetails.pizza_id = Pizzas.pizza_id
GROUP BY category;
```

#### Top 5 Best Sellers by Revenue
```sql
SELECT pizza_id, SUM(total_price) AS TotalRevenue
FROM OrderDetails
GROUP BY pizza_id
ORDER BY TotalRevenue DESC
LIMIT 5;
```

#### Worst Sellers by Revenue
```sql
SELECT pizza_id, SUM(total_price) AS TotalRevenue
FROM OrderDetails
GROUP BY pizza_id
ORDER BY TotalRevenue ASC
LIMIT 5;
```
-->
## Conclusion
This Pizza Sales Report provides valuable insights into sales performance through detailed analysis and visualizations. By leveraging Power BI and SQL Server, we have accurately captured and analyzed key metrics, trends, and sales distributions. The insights gained from this report can guide strategic decisions to enhance business performance and customer satisfaction.

# Connect
LinkedIn: [Md Lutful kabir](https://www.linkedin.com/in/mdlutfulkabir/)</br>
Email: [lutfulkabir1757@gmail.com](lutfulkabir1757@gmail.com)
