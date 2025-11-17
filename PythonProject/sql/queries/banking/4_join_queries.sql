-- Customer + Account
SELECT
    bc.customer_id,
    bc.first_name,
    bc.last_name,
    a.account_type,
    a.balance
FROM banking_customers bc
JOIN accounts a ON bc.customer_id = a.customer_id;

-- Customer + Account + Transaction
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

