import 'private&factoryconstructors.dart';

void main() {
  var b1 = banking.toCheck(
    accnumber: 4390067,
    accholder: "Syam",
    balance: 300000,
  ); //private constructor can be used in another class as well, by importing the parent library
  print(b1.deposit(100000));
  print("Balance is ${b1.withDraw(20000)}");
}
