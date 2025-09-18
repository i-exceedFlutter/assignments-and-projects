class sample extends Thread
{
    public void run()
    {
        for(var i=0;i<5;i++)
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
 
class joinexample1
 {
    public static void main(String[] args) throws Exception {
        sample obj1=new sample();
        sample obj2=new sample();
        sample obj3=new sample();
        obj1.start();
        obj1.join();
        obj2.start();
        obj3.start();
    }
 }
 