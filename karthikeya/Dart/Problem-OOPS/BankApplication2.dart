class Loan {
  String? customerId;
  String? customerName;
  String? loanType;
  double? loanAmount;
  double? interestRate;

  Loan.param(
    this.customerId,
    this.customerName,
    this.loanType,
    this.loanAmount,
    this.interestRate,
  );

  Loan.educationLoan(
    String customerId,
    String customerName,
    double amount,
  ) //named constructor
  : this.param(customerId, customerName, "Education Loan", amount, 6.5);

  factory Loan.createLoan(
    String customerId,
    String customerName,
    String loanType,
    double amount,
  ) {
    //factory constructor
    if (amount < 100000) {
      throw Exception("Loan amount must be at least 10,000!");
    }
    return Loan.param(customerId, customerName, loanType, amount, 7.0);
  }

  Loan.copy(Loan other) {
    customerId = other.customerId;
    customerName = other.customerName;
    loanType = other.loanType;
    loanAmount = other.loanAmount;
    interestRate = other.interestRate;
  }

  void updateInterest(double newRate) {
    double oldRate = interestRate ?? 0.0;
    interestRate = newRate;
    print(
      "Interest updated from $oldRate% to $interestRate% for $customerName",
    );
  }

  void display() {
    print(
      "Customer: ${customerName ?? "Unknown"} "
      "| Loan: ${loanType ?? "N/A"} "
      "| Amount: ₹${loanAmount?.toStringAsFixed(2) ?? "0"} "
      "| Rate: ${interestRate!.toStringAsFixed(2)}%",
    );
  }
}

void main() {
  Map<String, Loan> loanRecords = {};

  try {
    var loan1 = Loan.createLoan("S01", "Karthik", "Home Loan", 500000);
    var loan2 = Loan.educationLoan("S02", "Sai", 200000);

    loanRecords[loan1.customerId!] = loan1;
    loanRecords[loan2.customerId!] = loan2;

    var loan3 = Loan.copy(loan1);
    loan3.customerId = "C03";
    loan3.customerName = "Syam";
    loanRecords[loan3.customerId!] = loan3;

    loanRecords.forEach((id, loan) {
      loan.display();
    });

    loanRecords["C01"]?.updateInterest(8.0);

    if (loanRecords["C999"] != null) {
      loanRecords["C999"]!.display();
    } else {
      print("Customer C999 not found!");
    }
  } catch (e) {
    print("Error: $e");
  }
}
