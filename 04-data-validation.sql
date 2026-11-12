-- 04-data-validation.sql
-- Checks a tester can run to find bad or inconsistent payment data.

-- Orders with more than one completed payment (possible duplicate charge)
SELECT order_id, COUNT(*) AS completed_payments
FROM payments
WHERE status = 'completed'
GROUP BY order_id
HAVING COUNT(*) > 1;

-- Payments with a zero or negative amount
SELECT payment_id, order_id, amount, status
FROM payments
WHERE amount <= 0;

-- Number of payments and total amount for each status
SELECT status, COUNT(*) AS payment_count, SUM(amount) AS total_amount
FROM payments
GROUP BY status;

-- Orders where the completed payments do not equal the order total
SELECT o.order_id, o.order_total, SUM(p.amount) AS amount_paid
FROM orders o
INNER JOIN payments p ON p.order_id = o.order_id
WHERE p.status = 'completed'
GROUP BY o.order_id, o.order_total
HAVING SUM(p.amount) <> o.order_total;

-- Payments missing a required value
SELECT payment_id, order_id, status
FROM payments
WHERE payment_method IS NULL;
