class sample extends  Thread {
    public void run(){
        for(var i=0;i<10;i++){
            try{
                System.out.println("Child "+i);
                Thread.sleep(1000);
            }catch(InterruptedException d){}
        }
    }
}
 
class demothread31{
    public static void main(String[] args) throws Exception {
       sample obj=new sample();
       obj.start();
	   
       Thread t=Thread.currentThread();
	   
       for(var i=0;i<10;i++){
            System.out.println("Main "+i);
			t.sleep(1000);
        }
    }
 }