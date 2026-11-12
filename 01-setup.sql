-- 01-setup.sql
-- Creates a small mock payments database for SQL practice.
-- All data is made up. Run this in a practice database only.

DROP TABLE IF EXISTS payments;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  full_name   VARCHAR(100) NOT NULL,
  email       VARCHAR(100),
  country     VARCHAR(50)
);

CREATE TABLE orders (
  order_id    INT PRIMARY KEY,
  customer_id INT NOT NULL,
  order_total DECIMAL(10,2) NOT NULL,
  order_date  DATE NOT NULL
);

CREATE TABLE payments (
  payment_id     INT PRIMARY KEY,
  order_id       INT NOT NULL,
  customer_id    INT NOT NULL,
  amount         DECIMAL(10,2) NOT NULL,
  currency       VARCHAR(3) NOT NULL,
  status         VARCHAR(20) NOT NULL,
  payment_method VARCHAR(30),
  created_at     DATE NOT NULL
);

INSERT INTO customers VALUES (1, 'Ama Mensah',   'ama@example.com',  'Ghana');
INSERT INTO customers VALUES (2, 'Kofi Boateng', 'kofi@example.com', 'Ghana');
INSERT INTO customers VALUES (3, 'Lena Fischer', 'lena@example.com', 'Germany');
INSERT INTO customers VALUES (4, 'Jon Reyes',    'jon@example.com',  'United States');
INSERT INTO customers VALUES (5, 'Sara Ali',     'sara@example.com', 'United Kingdom');
INSERT INTO customers VALUES (6, 'Test Customer', NULL,              'United States');

INSERT INTO orders VALUES (101, 1, 120.00, '2026-11-01');
INSERT INTO orders VALUES (102, 2,  45.50, '2026-11-02');
INSERT INTO orders VALUES (103, 3, 300.00, '2026-11-03');
INSERT INTO orders VALUES (104, 4,  80.00, '2026-11-04');
INSERT INTO orders VALUES (105, 1,  60.00, '2026-11-05');
INSERT INTO orders VALUES (106, 5, 200.00, '2026-11-06');
INSERT INTO orders VALUES (107, 2,  35.00, '2026-11-07');
INSERT INTO orders VALUES (108, 4, 150.00, '2026-11-08');

INSERT INTO payments VALUES (1001, 101, 1, 120.00, 'USD', 'completed', 'card',          '2026-11-01');
INSERT INTO payments VALUES (1002, 102, 2,  45.50, 'USD', 'completed', 'mobile_money',  '2026-11-02');
INSERT INTO payments VALUES (1003, 103, 3, 300.00, 'EUR', 'completed', 'card',          '2026-11-03');
INSERT INTO payments VALUES (1004, 104, 4,  80.00, 'USD', 'failed',    'card',          '2026-11-04');
INSERT INTO payments VALUES (1005, 104, 4,  80.00, 'USD', 'completed', 'card',          '2026-11-04');
INSERT INTO payments VALUES (1006, 105, 1,  60.00, 'USD', 'completed', 'card',          '2026-11-05');
INSERT INTO payments VALUES (1007, 105, 1,  60.00, 'USD', 'completed', 'card',          '2026-11-05');
INSERT INTO payments VALUES (1008, 106, 5, 150.00, 'GBP', 'completed', 'bank_transfer', '2026-11-06');
INSERT INTO payments VALUES (1009, 107, 2,  35.00, 'USD', 'pending',   NULL,            '2026-11-07');
INSERT INTO payments VALUES (1010, 107, 2, -35.00, 'USD', 'refunded',  'mobile_money',  '2026-11-07');
INSERT INTO payments VALUES (1011, 999, 9,  25.00, 'USD', 'completed', 'card',          '2026-11-08');
