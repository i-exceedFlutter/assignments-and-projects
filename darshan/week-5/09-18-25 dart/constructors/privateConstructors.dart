class banking {
  String? accnumber;
  String? accholder;
  double? balance;

  banking._(this.accnumber, this.accholder, this.balance);

  factory banking.toCheck(String accnumber, String accholder, double balance) {
    if (balance < 100) {
      throw new Exception("Balance is insufficient");
    } else {
      return banking._(accnumber, accholder, balance);
    }
  }

  double deposit(double amt) {
    return balance = balance! + amt;
  }

  double withDraw(double amt) {
    if (balance! > amt) {
      balance = balance! - amt;
    } else {
      throw new Exception("Less balance !");
    }

    return balance!;
  }
}

void main() {
  var b1 = banking.toCheck("b1", "Darshan", 125000);
  print(b1.deposit(25000));
  print("Balance is ${b1.withDraw(10000)}");
}
