class Bank {
  static int totalAccounts = 0;

  static void showTotalAccounts() {
    print("Welcome to the I-Exceed bank");
    print("Total accounts created: $totalAccounts");
  }
}

class Account {
  String accNumber;
  String holderName;
  double balance;

  Account(this.accNumber, this.holderName, this.balance) {
    Bank.totalAccounts++;
  }

  void deposit(double amount) {
    balance += amount;
    print("Deposited $amount. New Balance: $balance");
  }

  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      print("Withdrew $amount. New Balance: $balance");
    } else {
      print("Insufficient balance!");
    }
  }
}

void main() {
  Account a1 = Account("101", "Alice", 500);
  Account a2 = Account("102", "Bob", 1000);

  a1.deposit(200);
  a1.withdraw(100);

  a2.withdraw(500);
  a2.deposit(300);

  Bank.showTotalAccounts();
}
