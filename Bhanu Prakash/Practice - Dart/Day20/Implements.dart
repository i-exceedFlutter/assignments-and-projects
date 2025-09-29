abstract class Bank {
  String accNumb;
  double balance;

  Bank(this.accNumb, this.balance);

  void displayBalance();
  void display(){
    print("Hello");
  }
}

class Savings implements Bank {
  @override
  String accNumb;

  @override
  double balance;

  double interest;

  Savings(this.accNumb, this.balance, this.interest);

  @override
  void display() {
    print("AccNo: $accNumb, Balance: $balance, Interest: $interest%");
  }

  @override
  void displayBalance() {
    print("$balance from Savings");
  }
}

void main() {
  Bank b1 = Savings("ACC03", 200.02, 3);
  b1.display();
  b1.displayBalance();
}
