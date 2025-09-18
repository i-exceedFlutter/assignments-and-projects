import 'banking.dart';

void main() {
  Banking obj = Banking.assignValue(
    name: "Subanu",
    acc_no: 12388925372,
    balance: 10000,
    pin: 1234,
  );
  obj.displayBalance();
  obj.withdraw(3000);
  obj.displayBalance();
  obj.deposit(2500);
  obj.displayBalance();
}
