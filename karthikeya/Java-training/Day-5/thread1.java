class sample extends Thread //A thread in Java is a lightweight unit of execution inside a process, extends the built-in Thread class, which means sample becomes a thread class and inherits all thread-related functionality.
{
    sample()
	{
 
    } // default constructor
    public void run() //The run() method is overridden from the Thread class.It contains the task that will execute when the thread starts
    {
        System.out.println("welcome to thread");
    }
}
 
class thread1
 {
    public static void main(String asd[])
    {
       sample obb = new sample();  // thread object is created
       sample obj1 = new sample();
       obj1.start();  // When you call .start() on a Thread object, it internally calls the run() method in a separate thread of execution.
       obb.start(); // now your program has two threads running in parallel, each executing the run() method, both threads run concurrently.
	   //Calling .start() → creates a new thread and runs run() in parallel.
    }
 }