class sample extends Thread{
    public void run(){
        for(var i=0;i<10;i++){
            try{
				System.out.println(i);
				Thread.sleep(1000);
            }catch(InterruptedException d){}
        }
    }
}
 
class demothread4{
    public static void main(String[] args) throws Exception {
        sample obj1=new sample();
        sample obj2=new sample();
        sample obj3=new sample();
        obj1.start();
        obj1.join(); //it's for stopping of excecution until one thread is completed then only it enter into another thread
        obj2.start();
		obj2.join();// we can declare the time to run the thread in join
        obj3.start();
    }
 }