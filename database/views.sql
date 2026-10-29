CREATE VIEW vw_orders_details AS
SELECT 
o.ID AS "order_id", 
u.name AS "customer_name", 
u.email AS "customer_email", 
o.total_amount AS "total", 
o.date AS "order_date"
FROM orders o
JOIN users u
ON o.user_ID = u.ID;
