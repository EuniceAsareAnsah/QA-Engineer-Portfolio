-- 03-joins.sql
-- Combining tables to check that records match up.

-- Payments with the customer name
SELECT p.payment_id, c.full_name, p.amount, p.status
FROM payments p
INNER JOIN customers c ON c.customer_id = p.customer_id;

-- Customers who have never made a payment
SELECT c.customer_id, c.full_name
FROM customers c
LEFT JOIN payments p ON p.customer_id = c.customer_id
WHERE p.payment_id IS NULL;

-- Orders with no completed payment
SELECT o.order_id, o.order_total
FROM orders o
LEFT JOIN payments p
  ON p.order_id = o.order_id AND p.status = 'completed'
WHERE p.payment_id IS NULL;

-- Payments that point to an order that does not exist
SELECT p.payment_id, p.order_id, p.amount
FROM payments p
LEFT JOIN orders o ON o.order_id = p.order_id
WHERE o.order_id IS NULL;
