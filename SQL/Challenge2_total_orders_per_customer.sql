-- Challenge 2: Total orders and total amount per customer (include customers with no orders)

-- Step 1: Create tables (for demo purposes)
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    region VARCHAR(50),
    signup_date DATE
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Step 2: Load sample data
INSERT INTO customers (customer_id, name, region, signup_date) VALUES
(1,'John Doe','North','2024-01-15'),
(2,'Jane Smith','South','2024-02-10'),
(3,'Michael Lee','East','2024-03-12'),
(4,'Sarah Kim','West','2024-05-20'),
(5,'David Brown','North','2024-06-18');

INSERT INTO orders (order_id, customer_id, order_date, amount) VALUES
(101,1,'2025-01-10',500),
(102,2,'2025-01-15',750),
(103,1,'2025-02-05',200),
(104,3,'2025-02-20',300),
(105,5,'2025-03-12',400),
(106,2,'2025-03-25',600),
(107,4,'2025-04-01',350),
(108,3,'2025-04-10',450);

-- Step 3: Query total orders and total amount per customer (include customers with no orders)
SELECT 
    c.customer_id,
    c.name,
    COUNT(o.order_id) AS total_orders,
    COALESCE(SUM(o.amount),0) AS total_amount
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_amount DESC;

