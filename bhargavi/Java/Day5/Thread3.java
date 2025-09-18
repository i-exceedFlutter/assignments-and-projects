class sample extends Thread
{
    sample(){
          //this.start();  
    } 
    public void run()
    {
        System.out.println("welcome to thread"+Thread.currentThread().getName());
   
    }
}
 
class Thread3
 {
    public static void main(String asd[])
    {
       sample obb=new sample();
       obb.start();
       Thread.currentThread().setName("Main");
       System.out.println("mn"+Thread.currentThread().getName());
       
     
    }
 }