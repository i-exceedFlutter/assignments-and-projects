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

class thread2
{
   public static void main(String args[])
   {
      sample s1 = new sample();
      sample s2 = new sample();
      s1.start();    // used to call run method
      s2.start();
   }
}