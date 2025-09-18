class sample extends Thread
{
    sample()
	{
        this.start(); // thread runs automatically when the thread object is created, calls the run() method in a seperate thread parallely
    } // default constructor
    public void run()
    {
        System.out.println("Helloo thread");
    }
}
 
class thread2
 {
    public static void main(String asd[])
    {
       sample obb=new sample(); //  calls the constructor
       sample obj1=new sample();
	   sample obj2=new sample();
    }
 }