-- 02-select-where.sql
-- Filtering and sorting payment data.

-- Failed payments
SELECT payment_id, order_id, amount, status
FROM payments
WHERE status = 'failed';

-- Completed payments over 100, largest first
SELECT payment_id, amount, currency
FROM payments
WHERE status = 'completed' AND amount > 100
ORDER BY amount DESC;

-- Payments created between two dates
SELECT payment_id, order_id, status, created_at
FROM payments
WHERE created_at BETWEEN '2026-11-02' AND '2026-11-05';

-- Payments made by card or mobile money
SELECT payment_id, payment_method, amount
FROM payments
WHERE payment_method IN ('card', 'mobile_money');

-- Payments with no payment method recorded
SELECT payment_id, order_id, status
FROM payments
WHERE payment_method IS NULL;

-- The three largest payments
SELECT payment_id, amount, currency
FROM payments
ORDER BY amount DESC
LIMIT 3;
