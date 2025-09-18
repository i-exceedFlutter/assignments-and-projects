class sample extends Thread{
	Thread t1=new Thread();
	//Thread t1=Thread.currentThread();
	public void run(){
        for(var i=0;i<10;i++){
            try{
				System.out.println(i);
				t1.sleep(1000);
            }catch(InterruptedException d){
			System.out.println(i);
        }
	}
}
class demothread3{
	public static void main(String asd[]){
		//Thread t=Thread.currentThread();
		Thread t=new Thread();
        sample obj=new sample();
        obj.start();
	}
}