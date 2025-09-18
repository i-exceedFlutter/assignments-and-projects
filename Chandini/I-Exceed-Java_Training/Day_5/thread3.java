class sample extends Thread
{
    sample()
    {
        this.start();
    } 
    public void run()
    {
        System.out.println("This is a thread "+new Thread().getName());
    }
}
 
class thread3
 {
    public static void main(String asd[])
    {
       sample s1 = new sample();
       sample s2 = new sample();
       System.out.println("Main thread : "+Thread.currentThread().getName());
    }
 }
 