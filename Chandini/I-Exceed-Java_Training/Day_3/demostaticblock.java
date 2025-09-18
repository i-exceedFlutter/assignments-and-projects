class demostaticblock
{
   static int x;    // static variable
   static public void display()
   {
      System.out.println(x);
   }
   static
   {
      x = 23;
      display();
   }
   static
   {
      x = 76;
      display();
   } 
   public static void main(String args[])
   {
      System.out.println("Hi, this is the main method which executes after the static blocks.");
   }
}