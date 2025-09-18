class Banking {
  String? name;
  int? acc_no;
  num? balance;

  //named parameterized constructor
  Banking._({this.name, this.acc_no, this.balance});

  factory Banking.assignValue({
    String? name,
    int? acc_no,
    num? balance,
    int? pin,
  }) {
    if (pin == 1234) {
      return Banking._(name: name, acc_no: acc_no, balance: balance);
    } else {
      throw Exception("Wrong pin");
    }
  }

  num withdraw(num amount) {
    if (balance! > amount) {
      print("Rs.$amount is withdrawn");
      return balance = balance! - amount;
    } else {
      throw Exception("Insufficient balance");
    }
  }

  num deposit(num amount) {
    print("Rs.$amount is deposited");
    return balance = balance! + amount;
  }

  void displayBalance() {
    print("Balance is $balance");
  }
}
