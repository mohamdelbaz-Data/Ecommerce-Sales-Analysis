-- 1. Top products
SELECT product_name,
       ROUND(SUM(clean_total),2) AS sales
FROM orders
GROUP BY product_name
ORDER BY sales DESC
LIMIT 10;


-- 2. Top City
SELECT city,
       ROUND(SUM(clean_total),2) AS sales
FROM orders
GROUP BY city
ORDER BY sales DESC;



-- 3. Category analysis
SELECT category,
       ROUND(SUM(clean_total),2) AS sales
FROM orders
GROUP BY category
ORDER BY sales DESC;


-- 4. Most customers buying
SELECT customer_name,
       ROUND(SUM(clean_total),2) AS total_spent
FROM orders
GROUP BY customer_name
ORDER BY total_spent DESC;


-- 5. Best month sales
SELECT MONTH(order_date) AS month,
       ROUND(SUM(clean_total),2) AS sales
FROM orders
GROUP BY month
ORDER BY sales DESC;


-- 6. Rating analysis
SELECT rating,
       COUNT(*) AS total_orders
FROM orders
GROUP BY rating
ORDER BY rating DESC;


-- 7. Payments method analysis
SELECT payment_method,
       COUNT(*) AS orders_count
FROM orders
GROUP BY payment_method
ORDER BY orders_count DESC;


-- 8. Order status analysis
SELECT order_status,
       COUNT(*) AS total_orders
FROM orders
GROUP BY order_status; 
