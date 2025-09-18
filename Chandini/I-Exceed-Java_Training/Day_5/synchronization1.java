class call
 {
   synchronized public void callme(String msg)
    {
        System.out.print("[");
        System.out.print(msg);
        System.out.println("]");
    }
}
 
class caller extends Thread
{
    call targ;
    String msg;
    Thread t=new Thread(this);
    caller(call targ,String msg)
    {
        this.targ=targ;
        this.msg=msg;
        t.start();
    }
    public void run()
    {
        targ.callme(msg);
    }
}
 
 
class synchronization1
 {
    public static void main(String[] args) {
        call target=new call();
        caller obj1=new caller(target,"hi");
        caller obj2=new caller(target,"hello");
        caller obj3=new caller(target,"Engineers");
    }
 }
 