abstract class Banking {
  String? name;
  int? acc_no;
  double? balance;

  Banking(
    this.name,
    this.acc_no,
    this.balance,
  ); //abstract class can have a constructor

  Banking.details() {
    // can also have named constructor
    print("Name: $name");
    print("Account Number: $acc_no");
  }

  void greet() {
    print("Welcome $name");
  }

  void deposit(double amount);
  void withdraw(double amount);

  void getBalance() {
    print("Balance: $balance");
  }
}

class Account extends Banking {
  double? interestRate;

  Account(String name, int acc_no, double balance, this.interestRate)
    : super(name, acc_no, balance) {
    print("hi");
  }

  // Account(String name, int acc_no, double balance, this.interestRate)
  //   : super.details() ---> can also call named constructor

  @override
  void deposit(double amount) {
    print("Amount deposited");
    balance = balance! + amount;
  }

  @override
  void withdraw(double amount) {
    if (balance! > amount) {
      print("Amount withdrawn");
      balance = balance! - amount;
    } else {
      print("Insufficient balance");
    }
  }

  void display() {
    super.greet(); //can call super class method
    super.name = "Abhi";
    print(super.name); // can access super class property
  }
}

void main() {
  Account acc = Account("Subanu", 123212, 100000, 0.02);
  acc.greet();
  acc.display();
  acc.deposit(1000);
  acc.withdraw(2000);
  acc.getBalance();
}
