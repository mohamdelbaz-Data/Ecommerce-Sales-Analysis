SELECT ROUND(SUM(clean_total),2) AS total_sales
FROM orders;



SELECT ROUND(SUM(estimated_profit),2) AS total_profit
FROM orders;



SELECT COUNT(DISTINCT order_id) AS total_orders
FROM orders;



SELECT ROUND(AVG(clean_total),2) AS avg_order_value
FROM orders;
