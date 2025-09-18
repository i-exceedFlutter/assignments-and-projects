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
class MainandCons {
    public static void main(String[] args) {
        sample obj = new sample();
        Thread t= Thread.currentThread();
        obj.start();
        for(var i=0;i<10;i++){
            try{
                System.out.println("Main: "+i);
                Thread.sleep(1000);
            }catch(InterruptedException d){}
        }
    }
}