class sample extends Thread{
    sample(){
        this.start();
        System.out.println("Constructor");
    }
    public void run(){
        System.out.println("Run Method"+ new Thread().getName());
    }
}
class ThreadName {
    public static void main(String[] args) {
        sample obj = new sample();
        // Thread t1= new Thread();
        System.out.println("Main method"+new Thread().getName());
    }
}