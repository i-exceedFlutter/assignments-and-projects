abstract class Bank{
  String accNumb;
  double balance;
  Bank(this.accNumb,this.balance);
  void displayBalance (){
    print( "$balance");
  }
  void display();
}

class Savings extends Bank{
  double interest;
  Savings(String accNumb,double balance,this.interest):super(accNumb,balance);

  @override
  void display() {
    print("AccNo:$accNumb , Balance:$balance, interest:$interest");
  }
  void displayBalance (){
    print( "$balance from Savings");
  }
    
}
void main(){
  
  Bank b1=Savings("ACC03", 200.02, 3);
  b1.display();
  b1.displayBalance();
}