class sample extends Thread
{
   // Thread t=new Thread(this);
    Thread t1=Thread.currentThread();
    public void run(){
        for(var i=0;i<10;i++)
        {
            try{
            System.out.println(i);
            t1.sleep(1000);
            }catch(InterruptedException d){}
        }
 
    }
}
 
class current_thread2
 {
    public static void main(String asd[])
    {
        Thread t=Thread.currentThread();
        sample obj=new sample();
        obj.start();
    }
 }