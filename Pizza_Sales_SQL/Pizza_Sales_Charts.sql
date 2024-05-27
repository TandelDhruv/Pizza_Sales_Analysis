-- 1. Daily trend for total Orders.alter
	Select Day(order_date) as Day, Count(order_id) as "Total Orders" from pizza_sales
    Group by Day;
    
-- 2. Monthly Trend for Total Orders.
	Select hour(order_time) as Hours,count(order_id) as "Total Orders" from pizza_sales
    Group by Hours;

-- 3. Percentage of Sales by Pizza Category.
	Select pizza_category,Sum(quantity) as Sales from pizza_sales
    Group by pizza_category;

-- 4. Percentage of Sales by Pizza Size.
	Select pizza_size,Sum(quantity) as Sales from pizza_sales
    Group by pizza_size;

-- 5. Total Pizza Sold by Pizza Category.
	Select pizza_category,Count(*) as Total_Pizza_Sold from pizza_sales
    Group by pizza_category;

-- 6. Top 5 Best Sellers by Revenue, Total Quantity and Total Orders.
	Select pizza_name, Round(sum(Total_price),2) as Revenue, sum(quantity) as Total_Quantity, count(*) as Total_Orders
    from pizza_sales
    Group by pizza_name
    Order by Revenue desc,Total_Quantity desc,Total_Orders desc limit 5;

-- 7. Bottom 5 Best Sellers by Revenue, Total Quantity and Total Orders.
	Select pizza_name, Round(sum(Total_price),2) as Revenue, sum(quantity) as Total_Quantity, count(*) as Total_Orders
    from pizza_sales
    Group by pizza_name
    Order by Revenue,Total_Quantity,Total_Orders limit 5;