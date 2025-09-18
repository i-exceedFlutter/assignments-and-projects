
class Banking{
  Map<String, Map<String, dynamic>> bankAccounts = {
    "ACC01": {"Name": "Bhanu", "Balance": 5000000, "Type": "Savings"}, // balance in paise
    "ACC02": {"Name": "Prakash", "Balance": 3000000, "Type": "Current"},
    "ACC03": {"Name": "NTR", "Balance": 7000000, "Type": "Savings"},
  };

  void viewAccounts() {
    print("\n--- Bank Accounts ---");
    bankAccounts.forEach((accNo, details) {
      print("[$accNo] ${details['Name']} => ₹${details['Balance'] / 100} (${details['Type']})");
      
    });
    print("");
  }

 
  void deposit(String accNo, double amount) {
    if (bankAccounts.containsKey(accNo)) {
      bankAccounts[accNo]!["Balance"] += (amount * 100).round();
      print("₹$amount deposited to $accNo");
      print("Updated Balance => ${bankAccounts[accNo]!["Balance"]/100}\n");
    } else {
      print(" Account $accNo not found!\n");
    }
  }

  void withdraw(String accNo, double amount) {
    if (bankAccounts.containsKey(accNo)) {
      int amtInPaise = (amount * 100).round();
      if (bankAccounts[accNo]!["Balance"] >= amtInPaise) {
        bankAccounts[accNo]!["Balance"] -= amtInPaise;
        print("₹$amount withdrawn from $accNo");
        print("Updated Balance of $accNo = ${bankAccounts[accNo]!["Balance"]/100}\n");
      } else {
        print("Insufficient balance in $accNo!\n");
      }
    } else {
      print("Account $accNo not found!\n");
    }
  }
 
  double CheckBalance(String accNo) {
    if (bankAccounts.containsKey(accNo)) {
      return (bankAccounts[accNo]!["Balance"]) / 100;
    }
    return 0.0;
  }

}
void main() {
  // Map to store accounts
  Banking B1 = Banking();
  B1.viewAccounts();
  B1.deposit("ACC03", 1000);
  B1.withdraw("ACC01", 100000);
  B1.withdraw("ACC02", 100);
  B1.CheckBalance("ACC03");
  B1.viewAccounts();
  
}


  // // --- Interactive Menu ---
  // while (true) {
  //   print("\n========= Banking Menu =========");
  //   print("1. View Accounts");
  //   print("2. Deposit");
  //   print("3. Withdraw");
  //   print("4. Check Balance");
  //   print("5. Exit");
  //   stdout.write("Choose an option: ");
  //   String? choice = stdin.readLineSync();

  //   switch (choice) {
  //     case "1":
  //       viewAccounts();
  //       break;

  //     case "2":
  //       stdout.write("Enter Account No: ");
  //       String? accNo = stdin.readLineSync();
  //       if (!bankAccounts.containsKey(accNo)) {
  //         print("Account $accNo does not exist!");
  //         break;
  //       }
  //       stdout.write("Enter amount to deposit: ");
  //       double amount = double.parse(stdin.readLineSync()!);
  //       deposit(accNo!, amount);
  //       break;

  //     case "3":
  //       stdout.write("Enter Account No: ");
  //       String? accNo = stdin.readLineSync();
  //       if (!bankAccounts.containsKey(accNo)) {
  //         print("Account $accNo does not exist!");
  //         break;
  //       }
  //       stdout.write("Enter amount to withdraw: ");
  //       double amount = double.parse(stdin.readLineSync()!);
  //       withdraw(accNo!, amount);
  //       break;

  //     case "4":
  //       stdout.write("Enter Account No: ");
  //       String? accNo = stdin.readLineSync();
  //       if (!bankAccounts.containsKey(accNo)) {
  //         print("Account $accNo does not exist!");
  //         break;
  //       }
  //       print("Balance in $accNo → ₹${CheckBalance(accNo!)}");
  //       break;

  //     case "5":
  //       print("Thank you for banking!");
  //       return;

  //     default:
  //       print("Invalid choice, try again.");
  //   }
  // }
