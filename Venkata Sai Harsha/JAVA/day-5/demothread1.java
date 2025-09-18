class sample extends Thread
{
    sample(){
 
    } // default constructor
    public void run()
    {
        System.out.println("welcome to thread");
    }
}
 
class demothread1
 {
    public static void main(String asd[])
    {
       sample obb=new sample();
       sample obj1=new sample();
       obj1.start();
       obb.start();
    }
 }