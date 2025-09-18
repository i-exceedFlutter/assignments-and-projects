class bank{
  String? accNo;
  String? accHolder;
  double? balance;
  bank._({this.accNo,this.accHolder,this.balance});

  factory bank.toCheck({String? accNo,String? accHolder,double? balance}){
    if(balance!<100){
      throw new Exception("Balance is insufficient");
    }
    else{
      return bank._(accNo: accNo, accHolder: accHolder,balance:balance);
    }

  }
  double deposit(double amount){
    return balance=balance!+amount;

  }
  double withdraw(double amount){
    if(balance!>amount){
      balance=balance!-amount;
    }else{
      throw new Exception("Less Balance");
    }
    return balance!;

  }
  double Checkbalance(){
    return balance!;

  }

}
void main(){
  var b1=bank.toCheck(accNo: "ACC01", accHolder: "Bhanu", balance: 2300000);
  print("Depsoited amount of ${b1.deposit(2000)}");
  print("Withdrawn Successful of amount ${b1.withdraw(300000)}");

  print("Total Balance ${b1.Checkbalance()}");
}