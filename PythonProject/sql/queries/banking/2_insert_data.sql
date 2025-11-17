INSERT INTO banking_customers (first_name, last_name, email, phone, city)
VALUES
('Devi', 'N', 'devi@gmail.com', '9876543210', 'Coimbatore'),
('Saru', 'K', 'saru@gmail.com', '9999999999', 'Chennai'),
('Arun', 'R', 'arun@gmail.com', '8888888888', 'Bangalore'),
('Meera', 'S', 'meera@gmail.com', '7777777777', 'Hyderabad');

INSERT INTO accounts (customer_id, account_type, balance, created_at)
VALUES
(1, 'Savings', 25000, '2024-01-10'),
(2, 'Current', 45000, '2024-01-15'),
(3, 'Savings', 18000, '2024-02-01'),
(4, 'Salary', 60000, '2024-03-05');

INSERT INTO transactions (account_id, transaction_type, amount, transaction_date)
VALUES
(1, 'Deposit', 5000, '2024-02-01'),
(1, 'Withdrawal', 1500, '2024-02-05'),
(2, 'Deposit', 10000, '2024-03-01'),
(3, 'Withdrawal', 2000, '2024-04-10'),
(4, 'Deposit', 12000, '2024-04-15');
