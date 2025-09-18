class executionorder
{
   public static void main(String args[])
   {
      new executionorder();
   }
   
   // Static block
   static
   {
       System.out.println("Static block executes first.");
   }
   
   // Constructor
   executionorder()
   {
       System.out.println("Constructor executes after the instance initializer.");
   }
   
   // Instance Initializer
   {
      System.out.println("Instance Initializer executes after the static block.");
   }
   {
      System.out.println("2nd instance initializer block.");  
   }
}