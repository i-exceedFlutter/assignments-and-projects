class call{
   synchronized  public void callme(String msg){
        System.out.print("[");
        System.out.println(msg);
        System.out.println("]");
		this.display();
    }
	public void display(){
		for(var i=0;i<10;i++){
			/*try{
				System.out.println(i);
				Thread.sleep(1000);
			}catch(InterruptedException d){}*/	
			System.out.println(i);
		}
	}
}
 
class caller extends Thread{
    call targ;
    String msg;
    Thread t=new Thread(this);
    caller(call targ,String msg){
        this.targ=targ;
        this.msg=msg;
        t.start();
    }
    public void run(){
        targ.callme(msg);
    }
}
 
 
class demothread5{
    public static void main(String[] args) {
        call target=new call();
        caller obj1=new caller(target,"hi");
        caller obj2=new caller(target,"hello");
        caller obj3=new caller(target,"Engineers");
    }
 }
 