class call
 {
  public void callme(String msg)
    {
        synchronized (this) {
            System.out.print("[");
            System.out.println(msg);
            System.out.println("]");
   
        }
       
 
 
    }
   
}
 
class caller extends Thread
{
    call targ;
    String msg;
    
    caller(call targ,String msg)
    {
        this.targ=targ;
        this.msg=msg;
        start();
    }
    public void run()
    {
            targ.callme(msg);    
       
    }
}
 
 
class Thread7
 {
    public static void main(String[] args) {
        call target=new call();
        caller obj1=new caller(target,"hi");
        caller obj2=new caller(target,"hello");
        caller obj3=new caller(target,"Engineers");
    }
 }
 