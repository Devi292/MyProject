PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS transactions;
DROP TABLE IF EXISTS accounts;
DROP TABLE IF EXISTS banking_customers;

CREATE TABLE banking_customers (
    customer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT UNIQUE NOT NULL,
    phone TEXT,
    city TEXT,
    status TEXT DEFAULT 'Active'
);

CREATE TABLE accounts (
    account_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    account_type TEXT,
    balance REAL,
    created_at TEXT,
    FOREIGN KEY(customer_id) REFERENCES banking_customers(customer_id)
);

CREATE TABLE transactions (
    transaction_id INTEGER PRIMARY KEY AUTOINCREMENT,
    account_id INTEGER,
    transaction_type TEXT,
    amount REAL,
    transaction_date TEXT,
    FOREIGN KEY(account_id) REFERENCES accounts(account_id)
);
