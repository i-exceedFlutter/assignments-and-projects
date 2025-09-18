class sample extends Thread
{
    sample(){
            this.start();
    } // default constructor
    public void run()
    {
        System.out.println("welcome to thread"+new Thread().getName());
   
    }
}
 
class demothread
 {
    public static void main(String asd[])
    {
       sample obb=new sample();
       Thread t=Thread.currentThread();
       t.setName("Mainthread");
       System.out.println("Main thread"+t.getName());
     
    }
 }
 