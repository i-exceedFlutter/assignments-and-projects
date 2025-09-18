class sample extends Thread
{ 
    Thread t = Thread.currentThread(); // executed when object is created, Always refers to the thread that is executing at object creation time
	
    public void run()
	{
        for(var i=0;i<10;i++)
        {
            try
			{
            //System.out.println(i);
			System.out.println(i + " running in " + Thread.currentThread().getName());
            t.sleep(1000); // sleep(ms) is a static method of the Thread class. That means it always makes the currently running thread sleep, regardless of the object reference
            }catch(InterruptedException d){}
        }
 
    }
}
 
class thread4
 {
    public static void main(String asd[])
    {
        Thread t = Thread.currentThread();
		
        sample obj = new sample();  //thread object
		obj.setName("Worker Thread"); // renames the thread, since there is no constructor here, obj.setName() is called to rename the sample thread
        obj.start();  //starts a new thread parallel to the main thread
    }
 }
 