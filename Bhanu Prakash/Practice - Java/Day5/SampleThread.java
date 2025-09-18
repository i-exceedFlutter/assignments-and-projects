class sample extends Thread{
    sample(){
        System.out.println("Constructor");
    }
    public void run(){
        System.out.println("Run Method");
    }
}
class SampleThread {
    public static void main(String[] args) {
        sample obj = new sample();
        obj.start();
        System.out.println("Main method");
    }
}