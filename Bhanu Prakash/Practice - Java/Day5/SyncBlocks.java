
class call{
    synchronized public void callme(String msg){
        synchronized (this){
        System.out.print("[");
        System.out.println(msg);
        System.out.println("]");
        // this.display();
        }
    }
    public void display(){
        try{
        for(var i=0;i<10;i++){
            System.out.println(i);
            Thread.sleep(1000);
        }
        }catch(InterruptedException d){}
    }
}
class caller extends Thread{
    call tar;
    String msg;
    Thread t=new Thread(this);
    caller(call tar,String msg){
        this.tar=tar;
        this.msg=msg;
        t.start();
    }
    public void run(){
        tar.callme(msg);
    } 
    
}
class SyncBlocks {
    public static void main(String[] args) {
        call target=new call();
        caller obj1=new caller(target,"HI");
        caller obj2=new caller(target,"Hello");
        caller obj3=new caller(target,"Bhai");
    }
}