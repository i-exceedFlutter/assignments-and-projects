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
 
class thread4
 {
    public static void main(String asd[])
    {
       sample s1 = new sample();
       Thread t1 = Thread.currentThread();
       t1.setName("Main Thread");
       System.out.println("Execution of : "+t1.getName());
    }
 }
 