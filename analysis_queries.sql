CREATE DATABASE retail_sales;
DROP DATABASE retail_sales;
CREATE DATABASE retail_sales;
USE retail_sales;
CREATE TABLE sales (
  order_id INT,
  order_date DATE,
  customer_id VARCHAR(10),
  product VARCHAR(50),
  category VARCHAR(50),
  quantity INT,
  unit_price INT,
  region VARCHAR(20)
);
INSERT INTO sales VALUES
(1001,'2024-01-05','C001','Rice','Food',5,4500,'West'),
(1002,'2024-01-06','C002','Beans','Food',3,3800,'East'),
(1003,'2024-01-10','C003','Milk','Dairy',10,1200,'North'),
(1004,'2024-01-15','C001','Sugar','Food',4,1500,'West'),
(1005,'2024-02-02','C004','Bread','Bakery',6,800,'South'),
(1006,'2024-02-10','C002','Milk','Dairy',8,1200,'East'),
(1007,'2024-02-15','C005','Rice','Food',7,4500,'North'),
(1008,'2024-03-01','C003','Bread','Bakery',5,800,'West'),
(1009,'2024-03-05','C006','Sugar','Food',6,1500,'South'),
(1010,'2024-03-12','C004','Beans','Food',4,3800,'East');
SELECT * FROM sales;
SELECT SUM(quantity * unit_price) AS total_revenue
FROM sales;
SELECT product,
       SUM(quantity * unit_price) AS total_revenue
FROM sales
GROUP BY product
ORDER BY total_revenue DESC;
SELECT region,
       SUM(quantity * unit_price) AS total_revenue
FROM sales
GROUP BY region;
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
       SUM(quantity * unit_price) AS monthly_revenue
FROM sales
GROUP BY month
ORDER BY month;
