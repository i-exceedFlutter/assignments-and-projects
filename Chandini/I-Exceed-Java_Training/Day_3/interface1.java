interface sample1
{
   void method1();
   default public void show()
   {
      System.out.println("This method is from sample 1 interface.");
   }
}

interface sample2
{
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
   }
   @Override
   public void method2()
   {
      System.out.println("Overridden method2.");
   }
   @Override
   public void show()
   {
      System.out.println("Overridden show method.");
      sample1.super.show();
      sample2.super.show();
   }
}

class interface1
{
   public static void main(String args[])
   {
      sample ob = new sample();
      ob.method1();
      ob.method2();
      ob.show();
   }
}
