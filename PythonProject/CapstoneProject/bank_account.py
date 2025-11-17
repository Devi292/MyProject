# Base class
class BankAccount:
    def __init__(self, account_number, balance=0):
        self.account_number = account_number
        self.balance = balance

    def deposit(self, amount):
        if amount > 0:
            self.balance += amount
            print(f"Deposited {amount}. New balance: {self.balance}")
        else:
            print("Deposit amount must be positive.")

    def withdraw(self, amount):
        if 0 < amount <= self.balance:
            self.balance -= amount
            print(f"Withdrew {amount}. New balance: {self.balance}")
        else:
            print("Insufficient balance or invalid amount.")

# Derived class
class SavingsAccount(BankAccount):
    def __init__(self, account_number, balance=0, interest_rate=0.03):
        super().__init__(account_number, balance)
        self.interest_rate = interest_rate

    def add_interest(self):
        interest = self.balance * self.interest_rate
        self.balance += interest
        print(f"Interest added: {interest}. New balance: {self.balance}")


# Example usage
if __name__ == "__main__":
    acc1 = BankAccount("A101", 1000)
    acc1.deposit(500)
    acc1.withdraw(200)
    print("\n")

    sav_acc = SavingsAccount("S201", 2000)
    sav_acc.deposit(1000)
    sav_acc.add_interest()
    sav_acc.withdraw(500)
