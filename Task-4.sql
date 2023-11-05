-- Active: 1698769016556@@127.0.0.1@3306@test
SELECT
    c.name AS customer_name,
    SUM(oi.quantity * oi.unit_price) AS total_purchase_amount
FROM
    Customers c
INNER JOIN
    Orders o ON c.id = o.customer_id
INNER JOIN
    Order_Items oi ON o.id = oi.order_id
GROUP BY
    c.name
ORDER BY
    total_purchase_amount DESC;