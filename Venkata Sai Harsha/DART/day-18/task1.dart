import 'dart:convert';
import 'dart:io';
import 'dart:math';

double deposit(double a, double b, int smallestUnit) {
  int multiplier = pow(10, smallestUnit).toInt();
  int intA = (a * multiplier).round();
  int intB = (b * multiplier).round();
  return (intA + intB) / multiplier;
}

double withdraw(double a, double b, int smallestUnit) {
  int multiplier = pow(10, smallestUnit).toInt();
  int intA = (a * multiplier).round();
  int intB = (b * multiplier).round();
  return (intA - intB) / multiplier;
}

void main() async {
  final file = File('currencies.json');
  final jsonString = await file.readAsString();
  final Map<String, dynamic> currencies = jsonDecode(jsonString);

  Map<String, double> balances = {
    'Afghanistan': 1000.0,
    'United States': 500.0,
    'India': 10000.1,
    'Albania': 2000.98
  };

  List<Map<String, dynamic>> operations = [
    {'country': 'Afghanistan', 'type': 'deposit', 'amount': 123.456},
    {'country': 'Albania', 'type': 'withdraw', 'amount': 50.789},
    {'country': 'United States', 'type': 'withdraw', 'amount': 50.789},
    {'country': 'Afghanistan', 'type': 'withdraw', 'amount': 200.123},
    {'country': 'United States', 'type': 'deposit', 'amount': 300.555},
    {'country': 'India', 'type': 'deposit','amount':300.3},
  ];

  for (var op in operations) {
    String country = op['country'];
    String type = op['type'];
    double amount = op['amount'];
    int decimals = currencies[country]['decimals'];

    if (type == 'deposit') {
      balances[country] = deposit(balances[country]!, amount, decimals);
      print('${country} Deposited: $amount, New Balance: ${balances[country]} ${currencies[country]["code"]}');
    } else if (type == 'withdraw') {
      balances[country] = withdraw(balances[country]!, amount, decimals);
      print('${country} Withdrawn: $amount, New Balance: ${balances[country]} ${currencies[country]["code"]}');
    }
  }
}
