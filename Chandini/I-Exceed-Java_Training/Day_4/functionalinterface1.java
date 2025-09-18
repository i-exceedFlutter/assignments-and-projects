@FunctionalInterface
interface sample
{
    void m1();
}

class functionalinterface1
{
   public static void main(String args[])
   {
      new sample()
      {
         public void m1()
         {
            System.out.println("Functional interface.");
         }
      }.m1();
   }
}