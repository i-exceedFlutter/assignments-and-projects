class sample extends Thread
{
   sample()
   {
      
   }
   public void run()
   {
      System.out.println("This is a thread.");
   }
} 

class thread1
{
   public static void main(String args[])
   {
      sample s1 = new sample();
      s1.run();
      s1.run();
   }
}