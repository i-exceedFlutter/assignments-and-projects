class sample extends Thread
{
    sample(){
 
    } // default constructor
    public void run()
    {
        System.out.println("welcome to thread");
    }
}
 
class demothr
 {
    public static void main(String asd[])
    {
       sample obb=new sample();
       obb.start();
       //obb.start(); it will give an exception we can't start the thread with same object at a same time.
	   obb.run();
	   obb.run(); //but we can implement the method directly
    }
 }