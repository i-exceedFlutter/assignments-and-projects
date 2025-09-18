class sample extends  Thread {
    public void run()
    {
        for(var i=0;i<5;i++)
        {
            try
            {
                 System.out.println(i);
                 Thread.sleep(500);
            }
            catch(InterruptedException d){}
           
        }   
    }
}
 
class thread6
 {
    public static void main(String[] args) throws Exception 
    {
       sample obj=new sample();
       obj.start();
       Thread t=Thread.currentThread();
        for(var i=0;i<5;i++)
        {
            System.out.println("Main "+i);
            t.sleep(1000);
        }
    }
 }
 