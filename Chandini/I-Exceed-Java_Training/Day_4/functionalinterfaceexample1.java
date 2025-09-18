@FunctionalInterface
interface paymentprocessor
{
   void processpayment(double amount);
}

class upiprocessor implements paymentprocessor
{
   @Override
   public void pocesspayment(double amount)
   {
      System.out.println("Processing UPI payment of "+amount);
   }
}

class functionalinterfaceexample1
{
   public static void main(String args[])
   {
      paymentprocessor obj = new upiprocessor();
      obj.processpayment(2000);
   }
}