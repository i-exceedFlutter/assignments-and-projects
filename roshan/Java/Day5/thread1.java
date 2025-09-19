class sample extends Thread
{
    sample(){
 
    } // default constructor
    public void run()
    {
        System.out.println("welcome to thread");
    }
}
 
class thread1
 {
    public static void main(String asd[])
    {
       sample obb=new sample();  
       sample obj1=new sample();
       obj1.start();  // we can assign new objects and use start() but start() cant be used more than once for same object
       obb.start();

       // obb.start(); //here if we do this again this will throw an exception that we cant use start again 
 }
}