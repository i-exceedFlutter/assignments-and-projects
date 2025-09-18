import 'dart:convert';
import 'dart:io';

late Map<String, dynamic> currencyMap;

Future<void> main() async {
  
  final scriptDir = File.fromUri(Platform.script).parent.path;
  final file = File('$scriptDir/currencies.json');
  final jsonData = await file.readAsString();

  // assign to global currencyMap
  currencyMap = jsonDecode(jsonData);

  // Example: pick Indian currency decimals
  int indianDecimals = currencyMap["India"]["decimals"];

  print("Welcome to Simple Bank 💰");
  double balance = 1000.0; // initial balance

  while (true) {
    print("\nYour current balance: ${balance.toStringAsFixed(indianDecimals)} INR");
    print("Choose an option: \n1. Deposit \n2. Withdraw \n3. Exit");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        balance = await deposit(indianDecimals, balance);
        break;
      case "2":
        balance = await withdraw(indianDecimals, balance);
        break;
      case "3":
        print("Thank you for using Simple Bank!");
        exit(0);
      default:
        print("Invalid choice. Try again.");
    }
  }
}

Future<double> deposit(int decimals, double balance) async {
  stdout.write("Enter amount to deposit: ");
  double amount = double.parse(stdin.readLineSync()!);
  balance = calculate("+", balance, amount, decimals).toDouble();
  print("✅ Deposited $amount, New Balance: ${balance.toStringAsFixed(decimals)}");
  return balance;
}

Future<double> withdraw(int decimals, double balance) async {
  stdout.write("Enter amount to withdraw: ");
  double amount = double.parse(stdin.readLineSync()!);

  if (amount > balance) {
    print("❌ Insufficient balance!");
    return balance;
  }
  balance = calculate("-", balance, amount, decimals).toDouble();
  print("✅ Withdrawn $amount, New Balance: ${balance.toStringAsFixed(decimals)}");
  return balance;
}

num calculate(String operand, num value1, num value2, int decimals) {
  switch (operand) {
    case "+":
      return ((value1 * pow10(decimals)) + (value2 * pow10(decimals))) / pow10(decimals);
    case "-":
      return ((value1 * pow10(decimals)) - (value2 * pow10(decimals))) / pow10(decimals);
    default:
      throw Exception("Invalid operand");
  }
}

int pow10(int n) => List.filled(n, 10).reduce((a, b) => a * b);
