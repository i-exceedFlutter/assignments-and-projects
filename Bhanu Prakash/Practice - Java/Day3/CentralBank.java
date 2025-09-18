interface BankOp{
    public void Deposit(double amnt);
    public void Withdraw(double amnt);
}
class Operations implements BankOp {
        double balance =10000;
        @Override 
        public void Deposit(double amnt){
              balance+=amnt;
              System.out.println("Amount of "+amnt +" Deposited Successful");
              System.out.println("Updated Balance: "+balance);
          }
        @Override 
        public void Withdraw(double amnt){
              balance-=amnt;
              System.out.println("Withdrawn amount:"+amnt);
              System.out.println("Updated Balance: "+balance);
          }
         public double getbalance(){
             return balance;
         }
    
}
class CentralBank{
    public static void main(String args[]){
   	Operations ref=new Operations();
        ref.Withdraw(200);
        ref.Deposit(100);
	System.out.println("Final Balance: " + ref.getbalance());
	BankOp ref1=new Operations();
        ref1.Withdraw(200);
        ref1.Deposit(100);
	System.out.println("Final Balance (ref1): " + ((Operations) ref1).getbalance());
       

    }
    
}
