-- Active: 1698769016556@@127.0.0.1@3306@test
SELECT
    products.name AS product_name,
    order_items.quantity,
    (order_items.quantity * order_items.unit_price) AS total_amount
FROM
    Order_Items order_items
JOIN
    Products products ON order_items.product_id = products.id
ORDER BY
    order_items.order_id ASC;