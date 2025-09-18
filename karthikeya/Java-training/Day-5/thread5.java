class sample extends  Thread 
{
    public void run()
    {
        for(var i=0;i<10;i++)
        {
            try{
                //System.out.println(i);
				System.out.println(i + " running in " + Thread.currentThread().getName());
                Thread.sleep(500);  // worker thread running with a delay of 0.5 sec
            }catch(InterruptedException d){}  
        }
         
    }
}
 
class thread5
 {
    public static void main(String[] args) throws Exception {
       sample obj=new sample();
	   obj.setName("Worker Thread");
       obj.start(); //starts a new Worker Thread parallely to main thread
	   
       Thread t=Thread.currentThread();
       
        for(var i=0;i<10;i++)
        {
            System.out.println("Main"+i); // Main thread running with a delay of 1sec
            t.sleep(1000);
        }
    }
 }
 