@FunctionalInterface
interface sample
{
    void m1();
}

class functionalinterface2
{
   public static void main(String args[])
   {
      sample ob = () ->           //Lambda expression
      {
            System.out.println("Functional interface.");
      };
   }
}