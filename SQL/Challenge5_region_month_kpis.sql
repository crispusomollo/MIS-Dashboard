-- Challenge 5: Region-Month KPIs for 2025 (total orders, total sales, avg order value)

-- Step 1: Create months reference table
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

-- Step 2: Generate all region-month combinations
region_month AS (
    SELECT DISTINCT c.region, m.month_num, m.month_name
    FROM (SELECT DISTINCT region FROM customers) c
    CROSS JOIN months m
),

-- Step 3: Aggregate orders per region per month
region_month_orders AS (
    SELECT 
        rm.region,
        rm.month_num,
        rm.month_name,
        COUNT(o.order_id) AS total_orders,
        COALESCE(SUM(o.amount),0) AS total_sales,
        COALESCE(AVG(o.amount),0) AS avg_order_value
    FROM region_month rm
    LEFT JOIN customers c 
        ON c.region = rm.region
    LEFT JOIN orders o
        ON o.customer_id = c.customer_id
        AND YEAR(o.order_date) = 2025
        AND MONTH(o.order_date) = rm.month_num
    GROUP BY rm.region, rm.month_num, rm.month_name
)

-- Step 4: Final dashboard-ready output
SELECT 
    region,
    month_num,
    month_name,
    total_orders,
    total_sales,
    avg_order_value
FROM region_month_orders
ORDER BY region ASC, month_num ASC;

