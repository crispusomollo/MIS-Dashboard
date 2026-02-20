-- Challenge 3: Total sales per month for 2025 (include months with zero sales)

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
)

-- Step 2: Aggregate orders by month
SELECT 
    m.month_num,
    m.month_name,
    COALESCE(SUM(o.amount), 0) AS total_sales
FROM months m
LEFT JOIN orders o
    ON MONTH(o.order_date) = m.month_num
    AND YEAR(o.order_date) = 2025
GROUP BY m.month_num, m.month_name
ORDER BY m.month_num;

