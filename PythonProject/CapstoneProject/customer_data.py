import csv

# Read customers from CSV and print details
customers = []
with open('customers.csv', mode='r') as file:
    csv_reader = csv.DictReader(file)
    for row in csv_reader:
        customers.append(row)

print("Customers List from CSV:")
for customer in customers:
    print(customer)

# Store customer data in different data structures

# List
customer_list = [customer['name'] for customer in customers]
print("\nCustomer List:", customer_list)

# Tuple
customer_tuple = tuple(customer['email'] for customer in customers)
print("Customer Tuple:", customer_tuple)

# Set
customer_set = set(customer['name'] for customer in customers)
print("Customer Set:", customer_set)

# Dictionary
customer_dict = {customer['id']: {'name': customer['name'], 'email': customer['email']} for customer in customers}
print("Customer Dictionary:", customer_dict)
