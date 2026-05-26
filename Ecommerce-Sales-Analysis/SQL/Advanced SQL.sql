-- 1. Windows function
SELECT customer_name,
       SUM(clean_total) AS total_spent,
       RANK() OVER(ORDER BY SUM(clean_total) DESC) AS customer_rank
FROM orders
GROUP BY customer_name;



-- 2.Running total
SELECT order_date,
       SUM(clean_total) AS daily_sales,
       SUM(SUM(clean_total))
       OVER(ORDER BY order_date) AS running_total
FROM orders
GROUP BY order_date;



-- 3. CTE
WITH monthly_sales AS (
    SELECT MONTH(order_date) AS month,
           SUM(clean_total) AS sales
    FROM orders
    GROUP BY month
)
SELECT *
FROM monthly_sales
WHERE sales > 18000;