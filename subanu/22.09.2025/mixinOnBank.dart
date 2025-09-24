class Bank {
  num balance = 0;
  Bank(this.balance);

  void deposit(num amount) {
    balance += amount;
  }

  void withdraw(num amount) {
    if (balance < amount) {
      print("Insufficient Balance");
    } else {
      balance -= amount;
    }
  }

  void getBalance() {
    print("Balance is $balance");
  }
}

mixin calculateInterest on Bank {
  double? interest;
  void calculate(double interest) {
    interest = balance * interest;
    print("Interest is $interest");
    deposit(interest);
  }
}

class demo extends Bank with calculateInterest {
  demo(double interest, num balance) : super(balance) {
    this.interest = interest;
  }
  void applyInterest() {
    calculate(interest!);
  }
}

void main() {
  demo b = demo(0.03, 100000);
  b.deposit(1000);
  b.withdraw(500);
  b.calculate(0.02);
  b.getBalance();
  //(or)
  b.applyInterest();
  b.getBalance();
}
