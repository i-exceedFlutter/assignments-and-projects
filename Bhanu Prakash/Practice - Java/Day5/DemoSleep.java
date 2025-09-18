class sample extends Thread{
    Thread t1=Thread.currentThread();
    public void run(){
        for(var i=0;i<10;i++){
            try{
                 System.out.println(i);
                Thread.sleep(500);
            }catch(InterruptedException d){}
            
        }
    }
}
class DemoSleep {
    public static void main(String[] args) {
        sample obj = new sample();
        Thread t= Thread.currentThread();
        obj.start();
    }
}