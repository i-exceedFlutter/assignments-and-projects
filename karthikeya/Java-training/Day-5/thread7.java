class call
{
   synchronized public void callme(String msg) //Synchronized: Only one thread at a time can execute this method on the same object instance.
												//If multiple threads try to call callme() on the same call object, they will line up and wait.
    {
        System.out.print("["); //prints an open bracket and stays in the same line
        System.out.println(msg); //prints the mssg and goes to next line (println)
        System.out.println("]");
    }
}
 
class caller extends Thread
{
    call targ; //a reference to the shared call class(Aggregation)
    String msg;
    Thread t= new Thread(this);
	
    caller(call targ,String msg)
    {
        this.targ=targ;
        this.msg=msg;
        t.start(); //calls the run method
    }
    public void run()
    {
        targ.callme(msg);
    }
}
 
class thread7
 {
    public static void main(String[] args) 
	{
        call target = new call(); // reference variable object to the class call
		
        caller obj1 = new caller(target,"Hi");
        caller obj2 = new caller(target,"Hola");
        caller obj3 = new caller(target,"Friends");
    }
 }