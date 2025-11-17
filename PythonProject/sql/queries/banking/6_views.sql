CREATE VIEW IF NOT EXISTS active_customers AS
SELECT customer_id, first_name, last_name, email
FROM banking_customers
WHERE status = 'Active';

CREATE VIEW IF NOT EXISTS customer_transactions AS
SELECT
    bc.customer_id,
    bc.first_name,
    bc.email,
    a.account_type,
    t.transaction_type,
    t.amount,
    t.transaction_date
FROM transactions t
JOIN accounts a ON t.account_id = a.account_id
JOIN banking_customers bc ON a.customer_id = bc.customer_id;
