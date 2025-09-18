class Bank2 {
  late String accNo;     // cannot be null, but set later
  late String accHolder;   // Don't use late to avoid the error ;
  late double balance;
  Bank2(this.accHolder,this.accNo,this.balance);
  void display() {
    print("Account No: $accNo, Holder: $accHolder, Balance: $balance");  //no checks required
  }
}
void main(){
  Bank2 b2=Bank2("Bhanu", "ACC03", 240000000);
  b2.display();
}