interface sample1
{
   static final String name = "I-Exceed";
   void method1();
   default public void show()
   {
      System.out.println("This method is from sample 1 interface.");
   }
}

interface sample2
{
   int years = 5;
   double salary = 20000; 
   void method2();
   default public void show()
   {
      System.out.println("This method is from sample 2 interface.");
   }
}

class sample implements sample1,sample2
{
   @Override
   public void method1()
   {
      System.out.println("Overridden method1.");
      System.out.println("Name of the company : "+name);
   }
   @Override
   public void method2()
   {
      System.out.println("Overridden method2.");
      System.out.println("No of years : "+years);
      System.out.println("Salary : "+salary);
   }
   @Override
   public void show()
   {
      System.out.println("Overridden show method.");
      sample1.super.show();
      sample2.super.show();
   }
}

class interfacevariables1
{
   public static void main(String args[])
   {
      sample ob = new sample();
      ob.method1();
      ob.method2();
      ob.show();
   }
}
