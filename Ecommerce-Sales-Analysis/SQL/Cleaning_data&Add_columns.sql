SELECT *
FROM orders
WHERE total IS NULL;



SELECT order_id, COUNT(*)
FROM orders
GROUP BY order_id
HAVING COUNT(*) > 1;



SELECT *
FROM orders
WHERE total < 0
  OR quantity < 0;



ALTER TABLE orders
ADD COLUMN estimated_profit DECIMAL(10,2);


UPDATE orders
SET estimated_profit = 
(
CAST(REPLACE(REPLACE(total, '$', ''), ',', '') AS DECIMAL(10,2))
-
CAST(REPLACE(REPLACE(shipping, '$', ''), ',', '') AS DECIMAL(10,2))
) * 0.20;



UPDATE orders
SET order_date = STR_TO_DATE(order_date, '%m/%d/%Y');



ALTER TABLE orders
ADD clean_total DECIMAL(10,2);


UPDATE orders
SET clean_total =
CAST(
    REPLACE(REPLACE(total, '$', ''), ',', '')
    AS DECIMAL(10,2)
);