-- Challenge 4: Top 3 customers per month in 2025

-- Step 1: Create a months reference table
WITH months AS (
    SELECT 1 AS month_num, 'January' AS month_name UNION ALL
    SELECT 2, 'February' UNION ALL
    SELECT 3, 'March' UNION ALL
    SELECT 4, 'April' UNION ALL
    SELECT 5, 'May' UNION ALL
    SELECT 6, 'June' UNION ALL
    SELECT 7, 'July' UNION ALL
    SELECT 8, 'August' UNION ALL
    SELECT 9, 'September' UNION ALL
    SELECT 10, 'October' UNION ALL
    SELECT 11, 'November' UNION ALL
    SELECT 12, 'December'
),

-- Step 2: Generate all customer-month combinations
customer_month AS (
    SELECT c.customer_id, c.name, m.month_num, m.month_name
    FROM customers c
    CROSS JOIN months m
),

-- Step 3: Aggregate total sales per customer per month
customer_month_sales AS (
    SELECT 
        cm.customer_id,
        cm.name,
        cm.month_num,
        cm.month_name,
        COALESCE(SUM(o.amount), 0) AS total_sales
    FROM customer_month cm
    LEFT JOIN orders o
        ON o.customer_id = cm.customer_id
        AND YEAR(o.order_date) = 2025
        AND MONTH(o.order_date) = cm.month_num
    GROUP BY cm.customer_id, cm.name, cm.month_num, cm.month_name
),

-- Step 4: Rank customers per month
ranked AS (
    SELECT 
        *,
        RANK() OVER (PARTITION BY month_num ORDER BY total_sales DESC) AS rank
    FROM customer_month_sales
)

-- Step 5: Select top 3 customers per month
SELECT 
    month_num,
    month_name,
    name,
    total_sales,
    rank
FROM ranked
WHERE rank <= 3
ORDER BY month_num, rank;

