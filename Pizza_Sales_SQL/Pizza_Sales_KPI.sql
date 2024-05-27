-- 1. Total Revenue: The sum of the total price of all pizza orders.
	Select Round(Sum(Total_price),2) as "Total Revenue" from pizza_sales;

-- 2. Average Order Value: The average amount spent per order.
	Select Round(sum(total_price)/Count(distinct(order_id)),2) as "Average Order Value" from pizza_sales; 
    
-- 3. Total Pizzas Sold: The sum of the quantities of all pizza sold.
	Select Sum(quantity) as "Total Pizzas Sold" from pizza_sales;

-- 4. Total Orders: The total number of orders placed.
	Select Count(distinct(order_id)) as "Total Orders" from pizza_sales;
    
-- 5. Average Pizza Per Order: The average number of pizzas sold per order.
	Select Round(sum(quantity)/Count(distinct(order_id))) as "Average Pizza Per Order" from pizza_sales;