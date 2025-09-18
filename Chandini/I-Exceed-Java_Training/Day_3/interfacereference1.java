interface bankoperations
{
   public void deposit(double amount);
   public void withdrawal(double amount);
}

class savingsbank implements bankoperations
{
   double balance = 5000;
   @Override 
   public void deposit(double amount)
   {
       balance += amount;
       System.out.println("Deposited amount : "+amount);
   }
   @Override 
   public void withdrawal(double amount)
   {
       balance -= amount;
       System.out.println("Withdrawal amount : "+amount);
   }
   public double getbalance()
   {
      System.out.println("Balance amount is : "+balance);
      return balance;
   }
}

class interfacereference1
{
    public static void main(String args[])
    {
       bankoperations ob = new savingsbank();
       ob.deposit(4000);
       ob.withdrawal(1000);
       ((savingsbank)ob).getbalance();
    }
}