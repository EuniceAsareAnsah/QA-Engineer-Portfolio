-- 05-insert-update-delete.sql
-- Changing data. Run this in a practice database only.

-- Add a new test payment
INSERT INTO payments (payment_id, order_id, customer_id, amount, currency, status, payment_method, created_at)
VALUES (1012, 108, 4, 150.00, 'USD', 'pending', 'card', '2026-11-09');

SELECT * FROM payments WHERE payment_id = 1012;

-- Mark it as completed
UPDATE payments
SET status = 'completed'
WHERE payment_id = 1012;

SELECT payment_id, status FROM payments WHERE payment_id = 1012;

-- Remove the test payment
DELETE FROM payments
WHERE payment_id = 1012;

SELECT COUNT(*) AS rows_left FROM payments WHERE payment_id = 1012;
