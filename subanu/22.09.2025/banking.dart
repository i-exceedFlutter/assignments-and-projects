abstract class Bank {
  void openAccount();
  void closeAccount();
}

class Account {
  int? acc_no;
  double? balance;

  Account(this.acc_no, this.balance);

  void checkBalance() {
    print("Your balance is $balance");
  }
}

mixin depositAmount on Account {
  deposit(double amount) {
    print("Rs.$amount has been deposited");
    balance = balance! + amount;
  }
}

mixin withdrawAmount on Account {
  withdraw(double amount) {
    if (balance! < amount) {
      print("Insufficient balance");
    } else {
      print("Rs.$amount has been withdrawn");
      balance = balance! - amount;
    }
  }
}

class SavingAccount extends Account
    with depositAmount, withdrawAmount
    implements Bank {
  SavingAccount(int acc_no, double balance) : super(acc_no, balance);

  @override
  void openAccount() {
    print("Savings Account has been opened");
  }

  @override
  void closeAccount() {
    print("Savings Account has been closed");
  }
}

class CurrentAccount extends Account
    with depositAmount, withdrawAmount
    implements Bank {
  CurrentAccount(int acc_no, double balance) : super(acc_no, balance);
  @override
  void openAccount() {
    print("Current Account has been opened");
  }

  @override
  void closeAccount() {
    print("Current Account has been closed");
  }
}

void main() {
  SavingAccount s = SavingAccount(1232123, 100000);
  s.openAccount();
  s.deposit(2500);
  s.withdraw(1200);
  s.checkBalance();
  s.closeAccount();

  CurrentAccount c = CurrentAccount(14632763, 200000);
  c.openAccount();
  c.deposit(3200);
  c.withdraw(4200);
  c.checkBalance();
  c.closeAccount();
}
