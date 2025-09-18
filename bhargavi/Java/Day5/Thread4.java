class sample extends Thread
{
 public void run()
 {
  for (var i=0;i<10;i++)
  {
    System.out.println(i);
    try{
        Thread.sleep(1000);
    }catch(InterruptedException e){}
    
}
}
}
class Thread4
{
 public static void main(String args[])
 {
  sample s1=new sample();
  s1.start();
  sample s2=new sample();
  s2.start();
 }
}