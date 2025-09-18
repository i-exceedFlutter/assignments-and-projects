 
import java.time.chrono.ThaiBuddhistChronology;
 
class call extends Thread
 {
   synchronized  public void callme(String msg)
    {
        System.out.print("[");
        System.out.println(msg);
        System.out.println("]");
    }
    
    public void run()
    {
        System.out.println("123");
    }

}
 
class caller extends Thread
{
    call targ;
    String msg;
    //Thread t=new Thread(this);
    caller(call targ,String msg)
    {
        this.targ=targ;
        this.msg=msg;
        //t.start();
    }
   
  public void run()
    {
        targ.callme(msg);
    }
}
 
 
class demothread5
 {
    public static void main(String[] args) {
        call target=new call();
	target.start();
       caller obj1=new caller(target,"hi");
       obj1.start();
       caller obj2=new caller(target,"hello");
        caller obj3=new caller(target,"Engineers");
    }
 }
 