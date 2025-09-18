class sample extends Thread
{
    public void run(){
        for(var i=0;i<10;i++)
        {
            try
            {
              System.out.println(i);
              Thread.sleep(1000);
            } 
            catch(InterruptedException d){}
        }
    }
}
 
class thread5
 {
    public static void main(String asd[])
    {
        sample obj=new sample();
        obj.start();
    }
 }
 