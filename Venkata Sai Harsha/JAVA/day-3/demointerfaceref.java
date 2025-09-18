interface bankoperations
 {
     public void deposit(double amt);
     public void withdraw(double amt);
     
 }
 
 class savingbank implements bankoperations
 {
    double balance=10000;
    @Override
    public void deposit(double  amt){
        balance+=amt;
        System.out.println("Deposited"+amt);
    }
   
    @Override
    public void withdraw(double  amt){
        balance-=amt;
        System.out.println("Withdrawed"+amt);
    }
 
    public double getBalance()
    {
        return balance;
    }
   
 }
 
 class demointerfaceref
  {
    public static void main(String[] args) {
    bankoperations ref= new savingbank();
    ref.deposit(1000);
    ref.withdraw(500);
    System.out.println(((savingbank)ref).getBalance());
 
    }
  }