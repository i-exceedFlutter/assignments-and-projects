class Call {
    synchronized public void callme(String msg) {
        System.out.print("[");
        System.out.println(msg);
        System.out.println("]");
    }
}

class Caller extends Thread {
    Call target;       
    String msg;        

        Caller(Call target, String msg) {
        this.target = target;
        this.msg = msg;
        start(); 
    }

    // Code that runs in each thread
    public void run() {
        target.callme(msg); 
    }
}

public class Thread6 {
    public static void main(String[] args) {
        Call t1 = new Call();
        Caller obj1 = new Caller(t1, "Hi");
        Caller obj2 = new Caller(t1, "Hello");
        Caller obj3 = new Caller(t1, "Engineers");
    }
}
