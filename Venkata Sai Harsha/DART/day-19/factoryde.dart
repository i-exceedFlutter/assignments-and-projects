class Banking {
  final String accnumber;
  final String accholder;
  double balance;

  // Private constructor for internal use by factories
  Banking._(this.accnumber, this.accholder, this.balance);

  // Public constructor
  Banking(this.accnumber, this.accholder, this.balance);

  factory Banking.toCheck(String accnumber, String accholder, double balance) {
    if (balance < 100) {
      throw Exception("Balance is insufficient");
    } else {
      return Banking._(accnumber, accholder, balance);
    }
  }

  factory Banking.fromList(List<dynamic> data) {
    // Explicitly cast to ensure type safety from dynamic list elements
    return Banking(data[0] as String, data[1] as String, data[2] as double);
  }

  factory Banking.zeroBalance(String accnumber, String accholder) {
    return Banking(accnumber, accholder, 0.0);
  }

  factory Banking.fixedDeposit(String accnumber, String accholder) {
    return Banking(accnumber, accholder, 1000.0);
  }

  factory Banking.empty() {
    return Banking("", "", 0.0);
  }

  double deposit(double amt) {
    balance += amt;
    return balance;
  }

  double withDraw(double amt) {
    if (balance >= amt) {
      balance -= amt;
    } else {
      throw Exception("Less balance !");
    }
    return balance;
  }
}

void main() {
  try {
    var b1 = Banking.toCheck("101", "Alex", 200);
    print("${b1.accnumber} ${b1.accholder} ${b1.balance}");
  } catch (e) {
    print("Error creating b1: $e");
  }

  try {
    var b2 = Banking.fromList(["102", "John", 500.0]);
    print("${b2.accnumber} ${b2.accholder} ${b2.balance}");
  } catch (e) {
    print("Error creating b2: $e");
  }

  var b3 = Banking.zeroBalance("103", "Emma");
  print("${b3.accnumber} ${b3.accholder} ${b3.balance}");

  var b4 = Banking.fixedDeposit("104", "Mia");
  print("${b4.accnumber} ${b4.accholder} ${b4.balance}");

  var b5 = Banking.empty();
  print("${b5.accnumber} ${b5.accholder} ${b5.balance}");

  // Demonstrate deposit and withdraw
  print("\n--- Transaction Examples ---");
  var account = Banking.toCheck("200", "Alice", 500.0);
  print("Initial balance: ${account.balance}");

  account.deposit(150.0);
  print("Balance after deposit: ${account.balance}");

  try {
    account.withDraw(200.0);
    print("Balance after withdraw: ${account.balance}");
  } catch (e) {
    print("Withdrawal failed: $e");
  }

  try {
    account.withDraw(1000.0); // This should throw an exception
  } catch (e) {
    print("Attempted over-withdrawal caught: $e");
  }
  print("Final balance: ${account.balance}");
}