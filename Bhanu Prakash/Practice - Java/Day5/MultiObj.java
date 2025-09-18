class sample extends Thread{
    sample(){
        this.start();
        System.out.println("Constructor");
    }
    public void run(){
        System.out.println("Run Method"+ new Thread().getName());
    }
}
class MultiObj {
    public static void main(String[] args) {
        sample obj = new sample();
        sample obj2 = new sample();
        System.out.println("Main method"+new Thread().getName());
    }
}