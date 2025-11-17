-- show all
SELECT * FROM banking_customers;

-- show one
SELECT * FROM banking_customers WHERE email = 'devi@gmail.com';

-- update example
UPDATE banking_customers SET city = 'Madurai' WHERE customer_id = 1;

-- verify update
SELECT customer_id, first_name, city FROM banking_customers WHERE customer_id = 1;

-- delete example (you can comment this out if you don't want to delete)
DELETE FROM banking_customers WHERE customer_id = 4;

-- verify delete
SELECT * FROM banking_customers;
