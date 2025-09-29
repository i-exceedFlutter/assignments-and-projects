class BankAccount {
  double balance;
  BankAccount(this.balance);

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
    }
  }

  void displayInfo() {
    print("Balance: $balance");
  }
}

mixin InterestBearing on BankAccount {
  void addInterest(double rate) {
    double interest = balance * rate;
    balance += interest;
    print("interest ${interest} is applicable");
  }
}

class SavingsAccount extends BankAccount with InterestBearing {
  SavingsAccount(double balance) : super(balance);
}

class CurrentAccount extends BankAccount {
  CurrentAccount(double balance) : super(balance);
}

/* class InterestOnlyAccount with InterestBearing {
  InterestOnlyAccount(double balance) : super(balance);
}*/ 
// This won't work because InterestBearing uses `on BankAccount`, 
// so only classes that extend BankAccount can apply this mixin.



void main() {
  var s = SavingsAccount(1000);
  s.deposit(500);
  s.addInterest(0.05);
  s.withdraw(500);
  s.displayInfo();

  var c = CurrentAccount(2000);
  c.deposit(1000);
  c.withdraw(500);
  // c.addInterest(0.05);   // not applicable
  c.displayInfo();
}
