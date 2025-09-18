class sample extends Thread
{
    sample(String name)
	{
		super(name); //set the thread name
        this.start();
    } // default constructor
	                                                 
    public void run() //only one run() method should be declared 
    {
		System.out.println("welcome to thread " + Thread.currentThread().getName()); //If you want the name of the current running thread inside run()
        System.out.println("welcome to thread" + new Thread().getName()); //creates a new thread object (not started) and fetches its default name
    }
	
/* 	public void run()
    {
        System.out.println("welcome to thread " + Thread.currentThread().getName()); //If you want the name of the current running thread inside run()
    } */
}
 
class thread3
 {
    public static void main(String asd[])
    {
       sample obb = new sample("Work-1");
	   sample obj = new sample("Work-2");
	   
	   // Threads run concurrently, and their execution order is controlled by the thread scheduler (part of JVM + OS).The scheduler decides which thread gets CPU time first.

       //That’s why Work-2 printed first, then the main thread, then Work-1.The order of outputs in multi-threading is non-deterministic (not guaranteed).

       //Each run may produce a different sequence, depending on scheduling.
	   
       Thread t = Thread.currentThread(); // reference to the current executing thread
       t.setName("Running thread"); // renames the thread
       System.out.println("Main thread" + t.getName()); // fetching the name of the thread
    }
 }
 