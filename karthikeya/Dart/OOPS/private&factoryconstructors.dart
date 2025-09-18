class banking {
  int? accnumber;
  String? accholder;
  double? balance;

  banking._({
    this.accnumber,
    this.accholder,
    this.balance,
  }); //private constructor defined with ._, named parameterized constructor

  factory banking.toCheck({
    //named parameterized constructor
    required int? accnumber,
    required String? accholder,
    required double? balance,
  }) {
    //factory constructor which returns another constructor, usually a private one
    if (balance! < 1000) {
      throw new Exception("Balance is insufficient");
    } else {
      return banking._(
        accnumber: accnumber,
        accholder: accholder,
        balance: balance,
      );
    }
  }

  double deposit(double amt) {
    return balance = balance! + amt; //null assertion
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
