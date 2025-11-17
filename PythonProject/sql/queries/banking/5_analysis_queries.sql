-- High balance customers
SELECT bc.first_name, a.balance
FROM banking_customers bc
JOIN accounts a ON bc.customer_id = a.customer_id
WHERE a.balance > 30000;

-- Total deposits per customer
SELECT
    bc.first_name,
    SUM(CASE WHEN t.transaction_type = 'Deposit' THEN t.amount ELSE 0 END) AS total_deposit
FROM transactions t
JOIN accounts a ON t.account_id = a.account_id
JOIN banking_customers bc ON a.customer_id = bc.customer_id
GROUP BY bc.first_name;
