-- Active: 1698769016556@@127.0.0.1@3306@test
SELECT c.name AS category_name, 
       SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM Categories c
LEFT JOIN Products p ON c.id = p.category_id
LEFT JOIN Order_Items oi ON p.id = oi.product_id
GROUP BY c.name
ORDER BY total_revenue DESC;
