class example
{
   static int x = 10;
   int y = 9;
   example()
   {
      x = 11;
   }
   public static void staticmethod(int x,int y)
   {
      System.out.println(x+y);
   }
}

class staticexample
{
   public static void main(String args[])
   {
      example.staticmethod(2,3);
   }
}