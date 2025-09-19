class banking {
   String? accnumber;
   String? accholder;
   double? balance;
 
  banking._({this.accnumber,this.accholder,this.balance});
 
  factory banking.toCheck({String? accnumber,String? accholder,double? balance}){
    if(balance!<100){
      throw new Exception("Balance is insufficient");
    }else{
       return banking._(accnumber: accnumber, accholder:  accholder, balance:  balance);
    }
  }
 
  double deposit(double amt){
    return balance=balance!+amt;
  }
 
  double withDraw(double amt){
    if(balance!>amt){
      balance=balance!-amt;
    }else{
      throw new Exception("Less balance !");
    }
    return balance!;
  }
}

void main() {
  var b1 = banking.toCheck(accnumber: "101",accholder:  "Alex",balance:  200);
  b1.deposit(100000);
  b1.withDraw(200);
  print(b1.balance);
}