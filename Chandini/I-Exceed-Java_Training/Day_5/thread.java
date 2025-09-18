class sample extends Thread
{
    sample()
    {
        this.start();
    } 
    public void run()
    {
        System.out.println("This is a thread.");
    }
}
 
class thread
 {
    public static void main(String asd[])
    {
       sample s1 = new sample();
       sample s2 = new sample();
    }
 }
 