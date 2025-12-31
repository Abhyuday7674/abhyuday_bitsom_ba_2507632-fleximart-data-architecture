-- =========================================
-- Database: fleximart_dw
-- Task 3.2: Star Schema Implementation
-- Contains 30 dates, 15 products, 12 customers, 40 sales
-- =========================================

-- ======================
-- DIMENSION: dim_date
-- 30 dates (Jan–Feb 2024)
-- ======================

INSERT INTO dim_date VALUES
(20240101, '2024-01-01', 'Monday', 1, 1, 'January', 'Q1', 2024, false),
(20240102, '2024-01-02', 'Tuesday', 2, 1, 'January', 'Q1', 2024, false),
(20240103, '2024-01-03', 'Wednesday', 3, 1, 'January', 'Q1', 2024, false),
(20240104, '2024-01-04', 'Thursday', 4, 1, 'January', 'Q1', 2024, false),
(20240105, '2024-01-05', 'Friday', 5, 1, 'January', 'Q1', 2024, false),
(20240106, '2024-01-06', 'Saturday', 6, 1, 'January', 'Q1', 2024, true),
(20240107, '2024-01-07', 'Sunday', 7, 1, 'January', 'Q1', 2024, true),
(20240108, '2024-01-08', 'Monday', 8, 1, 'January', 'Q1', 2024, false),
(20240109, '2024-01-09', 'Tuesday', 9, 1, 'January', 'Q1', 2024, false),
(20240110, '2024-01-10', 'Wednesday', 10, 1, 'January', 'Q1', 2024, false),
(20240111, '2024-01-11', 'Thursday', 11, 1, 'January', 'Q1', 2024, false),
(20240112, '2024-01-12', 'Friday', 12, 1, 'January', 'Q1', 2024, false),
(20240113, '2024-01-13', 'Saturday', 13, 1, 'January', 'Q1', 2024, true),
(20240114, '2024-01-14', 'Sunday', 14, 1, 'January', 'Q1', 2024, true),
(20240115, '2024-01-15', 'Monday', 15, 1, 'January', 'Q1', 2024, false),
(20240201, '2024-02-01', 'Thursday', 1, 2, 'February', 'Q1', 2024, false),
(20240202, '2024-02-02', 'Friday', 2, 2, 'February', 'Q1', 2024, false),
(20240203, '2024-02-03', 'Saturday', 3, 2, 'February', 'Q1', 2024, true),
(20240204, '2024-02-04', 'Sunday', 4, 2, 'February', 'Q1', 2024, true),
(20240205, '2024-02-05', 'Monday', 5, 2, 'February', 'Q1', 2024, false),
(20240206, '2024-02-06', 'Tuesday', 6, 2, 'February', 'Q1', 2024, false),
(20240207, '2024-02-07', 'Wednesday', 7, 2, 'February', 'Q1', 2024, false),
(20240208, '2024-02-08', 'Thursday', 8, 2, 'February', 'Q1', 2024, false),
(20240209, '2024-02-09', 'Friday', 9, 2, 'February', 'Q1', 2024, false),
(20240210, '2024-02-10', 'Saturday', 10, 2, 'February', 'Q1', 2024, true),
(20240211, '2024-02-11', 'Sunday', 11, 2, 'February', 'Q1', 2024, true),
(20240212, '2024-02-12', 'Monday', 12, 2, 'February', 'Q1', 2024, false),
(20240213, '2024-02-13', 'Tuesday', 13, 2, 'February', 'Q1', 2024, false),
(20240214, '2024-02-14', 'Wednesday', 14, 2, 'February', 'Q1', 2024, false),
(20240215, '2024-02-15', 'Thursday', 15, 2, 'February', 'Q1', 2024, false);

-- ======================
-- DIMENSION: dim_product
-- 15 products, 3 categories
-- ======================

INSERT INTO dim_product (product_id, product_name, category, subcategory, unit_price) VALUES
('P001', 'Laptop', 'Electronics', 'Computers', 50000),
('P002', 'Smartphone', 'Electronics', 'Mobiles', 30000),
('P003', 'Headphones', 'Electronics', 'Audio', 5000),
('P004', 'T-Shirt', 'Fashion', 'Clothing', 1500),
('P005', 'Jeans', 'Fashion', 'Clothing', 3000),
('P006', 'Sneakers', 'Fashion', 'Footwear', 4000),
('P007', 'Refrigerator', 'Appliances', 'Kitchen', 45000),
('P008', 'Microwave', 'Appliances', 'Kitchen', 15000),
('P009', 'Washing Machine', 'Appliances', 'Laundry', 35000),
('P010', 'Tablet', 'Electronics', 'Gadgets', 25000),
('P011', 'Smart Watch', 'Electronics', 'Wearables', 12000),
('P012', 'Jacket', 'Fashion', 'Outerwear', 5000),
('P013', 'Air Conditioner', 'Appliances', 'Cooling', 42000),
('P014', 'Shoes', 'Fashion', 'Footwear', 3500),
('P015', 'Bluetooth Speaker', 'Electronics', 'Audio', 6000);

-- ======================
-- DIMENSION: dim_customer
-- 12 customers, 4 cities
-- ======================

INSERT INTO dim_customer (customer_id, customer_name, city, state, customer_segment) VALUES
('C001', 'Amit Sharma', 'Mumbai', 'Maharashtra', 'Retail'),
('C002', 'Neha Verma', 'Delhi', 'Delhi', 'Retail'),
('C003', 'Rahul Singh', 'Bangalore', 'Karnataka', 'Corporate'),
('C004', 'Pooja Iyer', 'Chennai', 'Tamil Nadu', 'Retail'),
('C005', 'Karan Mehta', 'Mumbai', 'Maharashtra', 'Corporate'),
('C006', 'Sneha Kapoor', 'Delhi', 'Delhi', 'Retail'),
('C007', 'Arjun Nair', 'Bangalore', 'Karnataka', 'Retail'),
('C008', 'Ritika Jain', 'Chennai', 'Tamil Nadu', 'Corporate'),
('C009', 'Vikram Rao', 'Mumbai', 'Maharashtra', 'Retail'),
('C010', 'Ananya Das', 'Delhi', 'Delhi', 'Retail'),
('C011', 'Suresh Kumar', 'Bangalore', 'Karnataka', 'Corporate'),
('C012', 'Meera Patel', 'Chennai', 'Tamil Nadu', 'Retail');

-- ======================
-- FACT TABLE: fact_sales
-- 40 sales transactions
-- ======================

INSERT INTO fact_sales
(date_key, product_key, customer_key, quantity_sold, unit_price, discount_amount, total_amount)
VALUES
-- JANUARY (20 rows)
(20240101, 1, 1, 1, 50000, 0, 50000),
(20240102, 2, 2, 2, 30000, 2000, 58000),
(20240103, 3, 3, 3, 5000, 0, 15000),
(20240104, 4, 4, 2, 1500, 0, 3000),
(20240105, 5, 5, 1, 3000, 0, 3000),
(20240106, 6, 6, 2, 4000, 500, 7500),
(20240107, 7, 7, 1, 45000, 0, 45000),
(20240108, 8, 8, 1, 15000, 0, 15000),
(20240109, 9, 9, 1, 35000, 0, 35000),
(20240110, 10, 10, 2, 25000, 2000, 48000),

(20240111, 11, 11, 1, 12000, 0, 12000),
(20240112, 12, 12, 2, 5000, 500, 9500),
(20240113, 13, 1, 1, 42000, 0, 42000),
(20240114, 14, 2, 2, 3500, 0, 7000),
(20240115, 15, 3, 3, 6000, 1000, 17000),

(20240105, 1, 4, 1, 50000, 0, 50000),
(20240106, 2, 5, 1, 30000, 0, 30000),
(20240107, 3, 6, 2, 5000, 0, 10000),
(20240108, 4, 7, 2, 1500, 0, 3000),
(20240109, 5, 8, 1, 3000, 0, 3000),



-- FEBRUARY (20 rows)
(20240201, 9, 12, 1, 35000, 0, 35000),
(20240202, 10, 1, 2, 25000, 2000, 48000),
(20240203, 11, 2, 1, 12000, 0, 12000),
(20240204, 12, 3, 2, 5000, 0, 10000),
(20240205, 13, 4, 1, 42000, 0, 42000),

(20240206, 14, 5, 2, 3500, 500, 6500),
(20240207, 15, 6, 3, 6000, 0, 18000),
(20240208, 1, 7, 1, 50000, 0, 50000),
(20240209, 2, 8, 1, 30000, 0, 30000),
(20240210, 3, 9, 2, 5000, 0, 10000),

(20240211, 4, 10, 2, 1500, 0, 3000),
(20240212, 5, 11, 1, 3000, 0, 3000),
(20240213, 6, 12, 1, 4000, 0, 4000),
(20240214, 7, 1, 2, 45000, 4000, 86000),
(20240215, 8, 2, 1, 15000, 0, 15000),

(20240205, 9, 3, 1, 35000, 0, 35000),
(20240206, 10, 4, 1, 25000, 0, 25000),
(20240207, 11, 5, 2, 12000, 1000, 23000),
(20240208, 12, 6, 2, 5000, 0, 10000),
(20240209, 13, 7, 1, 42000, 0, 42000);

