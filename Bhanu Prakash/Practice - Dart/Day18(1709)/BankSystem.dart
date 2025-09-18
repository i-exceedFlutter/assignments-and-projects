int rupeesToPaise(double amount) => (amount * 100).round();
double paiseToRupees(int paise) => paise / 100;

void main() {
  Map<String, Map<String, dynamic>> bankAccs = {
    "ACC01": {
      "Name": "Bhanu",
      "Balance": rupeesToPaise(23000),  
      "Type": "Savings",
    },
  };

  print("Initial Balance for ${bankAccs['ACC01']!['Name']} "
      "= ₹${paiseToRupees(bankAccs['ACC01']!['Balance'])}");

  
  double depositAmnt = 1000.75;
  bankAccs["ACC01"]!["Balance"] += rupeesToPaise(depositAmnt);

  double finalBalance = paiseToRupees(bankAccs["ACC01"]!["Balance"]);
  print("Final Balance for ${bankAccs['ACC01']!['Name']} = ₹$finalBalance");
}
