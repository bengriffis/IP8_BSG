-- 1.	Print all rows and columns of the dataset
use `premier_products`;
select * from customer;
select * from order_line;
select * from orders;
select * from part;
select * from sales_rep;
-- 2.	All rows, last name , first name, sales rep number, city from sales rep table 
select last_name, first_name, sales_rep_num, city from sales_rep;
-- 3.	Select order and customer number from orders
select order_num, customer_num from orders;
-- 4.	Select only two rows from order line
select * from order_line limit 2; 
-- 5.	Select all of the entries from customer where sales rep num=20
select * from customer
where sales_rep_num=20;
-- 6.	Select only customer name, balance, credit limit from customer where sales rep num=20
select customer_name, balance, credit_limit from customer
where sales_rep_num=20;
-- 7.	Select part num, num ordered, quoted price and total price where total price is (num_ordered * quoted_price) where only 1 num ordered and the order number is 21617
select ol.part_num, ol.num_ordered, ol.quoted_price, p.price from order_line ol join part p
on ol.part_num=p.part_num 
where p.price=(ol.num_ordered*ol.quoted_price) and ol.num_ordered=1 and ol.order_num=21617;
-- 8.	Show all the orders from order date between '2010-10-20’ and '2010-10-22'
select * from orders where order_date between '2010-10-20' and '2010-10-22';
-- 9.	List all of parts where the part description starts with ‘D’ and end with  ‘er’
select * from part where part_description like 'D%';
select * from part where part_description like '%er';
-- 10.	Show total balance from customer
select sum(balance) as 'Total Balance' from customer;
-- 11.	Show minimum balance from customer
select min(balance) as 'Minimum Balance' from customer;
-- 12.	Count number of customers in customer table
select count(customer_name) as 'Number of Customers' from customer;
-- 13.	Select order number where the quote price is more than 500 but less than 1000
select order_num from order_line where quoted_price between 500 and 1000;
-- 14.	Create a new table of customer name, last name, and first name from customer and sales rep table by matching up their primary key
select c.customer_name, s.last_name, s.first_name 
from customer c join sales_rep s
on c.sales_rep_num=s.sales_rep_num;
