-- Active: 1698769016556@@127.0.0.1@3306@test
SELECT
    customers.id,
    customers.name,
    customers.email,
    COUNT(orders.id) AS total_orders
FROM
    customers
INNER JOIN
    orders ON customers.id = orders.customer_id
GROUP BY
    customers.id, customers.name, customers.email
ORDER BY
    total_orders DESC;