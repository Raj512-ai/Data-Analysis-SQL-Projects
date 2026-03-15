use mini_project;
                     ################## LEVE 1 :- BASIC ##################
                     
# Retrieve customer names and emails for email marketing
select name as Customer_Names, email as Emails from customers;

# View complete product catalog with all available details
select * from products;

# List all unique product categories
select category, count(*) as Total_Products from products group by category;

# Show all products priced above ₹1,000
select product_id, name, category, price from products where price>1000;

# Display products within a mid-range price bracket (₹2,000 to ₹5,000)
select product_id, name, category, price from products where price between 2000 and 5000;

# Fetch data for specific customer IDs (e.g., from loyalty program list)
select customer_id, name, email, phone from customers where customer_id in (5,10,15,20,25,30);

# Identify customers whose names start with the letter ‘A’
select name, email, phone from customers where name like "A%";

# List electronics products priced under ₹3,000
select product_id, name, category, price from products where category="electronics" and price<3000;

# Display product names and prices in descending order of price
select name, price from products order by price desc;

# Display product names and prices, sorted by price and then by name
select name, price from products order by price desc;
select name, price from products order by name asc; 
########################################################################################################
######################### LEVEL 2 : FILTERING AND FORMATTING ##########################

# Retrieve orders where customer information is missing
select * from orders where customer_id is null;

# Display customer names and emails using column aliases for frontend readability
select name as Customer_Names, email as Customer_Emails from customers;

# Calculate total value per item ordered by multiplying quantity and item price
select order_id, product_id, quantity, item_price, quantity * item_price 
as Total_Value from order_items;

# Combine customer name and phone number in a single column
select name, phone, concat(name, " - ", phone) as Customer_Name__PH_Number from customers;

# Extract only the date part from order timestamps for date-wise reporting
select dayname(date(order_date)) as Day_Name,count(order_id) as Total_Orders
from orders group by dayname(date(order_date)) order by total_orders desc;

# List products that do not have any stock left
select product_id, name, category from products where stock_quantity = 0;
####################################################################################################
########################## Level 3: Aggregations ######################

# Count the total number of orders placed
select count(order_id) as Total_Number_of_Order_Placed from orders;

# Calculate the total revenue collected from all orders
select sum(total_amount) as Total_Revenue from orders;

# Calculate the average order value
select round(avg(total_amount),2) as Average_order_value from orders;

# Count the number of customers who have placed at least one order
select count(*) as Total_Customers_Placed_One_Order from order_items where quantity = 1;

# Find the number of orders placed by each customer
select customer_id, count(order_id) as Total_Oders from orders group by customer_id
order by count(order_id) desc;

# Find total sales amount made by each customer
select customers.customer_id as Customer_ID, customers.name as Name, sum(orders.total_amount) as 
Total_Sales_Amount from customers join orders ON customers.customer_id = orders.customer_id
group by customers.customer_id ,customers.name order by sum(orders.total_amount) desc;

# List the number of products sold per category
select products.category as Product_Category, sum(order_items.quantity)
as Quantity from products join order_items on products.product_id = order_items.product_id group by 
product_category order by quantity desc;

# Find the average item price per category
select category as Product_Category, round(avg(price),2) as Average_Price from products 
group by category order by average_price desc;

# Show number of orders placed per day
select dayname(order_date) as Day_Name, count(order_id) as Order_Counts from orders 
group by day_name order by order_counts desc;

# List total payments received per payment method
select method as Payment_Method, sum(amount_paid) as Total_Amount from payments group by method
order by total_amount desc;

#####################################################################################################
####################### Level 4: Multi-Table Queries (JOINS) ################################

# Retrieve order details along with the customer name (INNER JOIN) 
select orders.Order_id, customers.name as Customers_Name, date(orders.order_date) as Order_Date, 
time(orders.order_date) as Order_Time, orders.Status, orders.Total_Amount from orders inner join customers 
on orders.customer_id = customers.customer_id;

# Get list of products that have been sold (INNER JOIN with order_items)
select products.Product_ID, products.name as Product_Name, products.Category as Product_Category,
products.Price as Product_Price from products inner join order_items 
on products.product_id = order_items.product_id;

# List all orders with their payment method (INNER JOIN)
select Orders.Order_ID, date(orders.order_date) as Order_Date, orders.Status, orders.Total_Amount,
payments.method as Payment_Method from orders inner join payments 
on orders.order_id = payments.order_id;

# Get list of customers and their orders (LEFT JOIN)
select customers.Customer_ID, customers.name as Customers_Name, customers.phone as Phone_Number,
orders.Order_ID, date(orders.order_date) as Order_Date, orders.Status, orders.Total_Amount
from customers left join orders on customers.customer_id = orders.customer_id;

# List all products along with order item quantity (LEFT JOIN)
select products.Product_ID, products.name as Product_Name, products.Category, order_items.Quantity
from products left join order_items on products.product_id = order_items.product_id;

# List all payments including those with no matching orders (RIGHT JOIN)
select orders.Order_ID, orders.Customer_ID, date(orders.order_date) as Order_Date, payments.Payment_ID,
date(payments.payment_date) as Payment_Date, payments.Amount_Paid, payments.Method
from orders right join payments on orders.order_id = payments.order_id;

# Combine data from three tables: customer, order, and payment
select customers.Customer_ID, customers.name as Customers_Name, customers.email as Cuastomers_Email,
customers.Phone as Phone_Number, orders.Order_ID, date(orders.order_date) as Order_Date, orders.Status,
orders.Total_Amount, payments.Payment_ID, date(payments.payment_date) as Payment_Date, payments.Amount_Paid,
payments.Method from customers inner join orders on customers.customer_id = orders.customer_id
inner join payments on orders.order_id = payments.order_id order by customer_id;

####################################################################################################
############################## Level 5: Subqueries (Inner Queries) #################################

# List all products priced above the average product price
select Product_ID, Name, Category, Price from products where price > (select avg(price) from products);

# Find customers who have placed at least one order
select distinct customers.Customer_ID, customers.name as Customers_Name, customers.Email, 
customers.phone as Phone_Number from customers inner join orders 
on customers.customer_id = orders.customer_id;

# Show orders whose total amount is above the average for that customer
select Order_ID, Customer_ID, date(order_date) as Order_Date, Status, Total_Amount
from orders where total_amount > (select avg(total_amount) from orders);

# Display customers who haven’t placed any orders
select Customer_ID, name as Customers_Name, Email, phone as Phone_Number 
from customers where customer_id not in (select customer_id from orders); 

# Show products that were never ordered
select Product_ID, name as Product_Name, Category from products 
where product_id not in (select product_id from order_items);

# Show highest value order per customer
select customers.Customer_ID, customers.name as Customers_Name, max(orders.Total_Amount) as
Highest_Value_Order from customers join orders on customers.customer_id = orders.customer_id 
group by customers.Customer_ID order by Highest_Value_Order desc;

# Highest Order Per Customer (Including Names)
select customers.Customer_ID, customers.name as Customers_Name, max(orders.Total_Amount) as
Highest_Value_Order from customers join orders on customers.customer_id = orders.customer_id 
group by customers.Customer_ID order by Highest_Value_Order desc;

#####################################################################################################
############################# Level 6: Set Operations ##########################################

# List all customers who have either placed an order or written a product review
select distinct customers.Customer_ID, customers.name as Customers_Name, customers.Email, customers.phone 
as Phone_Number from customers join orders on customers.customer_id = orders.customer_id 
union select distinct customers.Customer_ID, customers.name as Customers_Name, customers.Email, 
customers.phone as Phone_Number from customers join Product_reviews on
customers.customer_id = product_reviews.customer_id order by customer_id;

# List all customers who have placed an order as well as reviewed a product
select distinct customers.Customer_ID, customers.name as Customers_Name, customers.Email, customers.phone 
as Phone_Number from customers inner join orders on customers.customer_id = orders.customer_id 
inner join product_reviews on customers.customer_id = product_reviews.customer_id;

#########################################################################################################









