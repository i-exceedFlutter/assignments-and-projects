interface sample
{
   static public void method1()
   {
      System.out.println("Static method from interface.");
   }
   default public void method2()
   {
      System.out.println("Default method from interface.");
   }
}

class sample1 implements sample
{
   sample1(){}
}

class interfacemethods
{
   public static void main(String args[])
   {
      sample1 ob = new sample1();
      sample.method1();
      ob.method2();
   } 
}