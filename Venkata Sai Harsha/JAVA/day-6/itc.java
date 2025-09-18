class Printer {
    private int turn = 1; // 1 = A's turn, 2 = B's turn, 3 = C's turn

    public synchronized void printA() throws InterruptedException {
        for (int i = 0; i < 5; i++) {
            while (turn != 1) {
                wait(); // Not A's turn → wait
            }
            System.out.print("A ");
            turn = 2; // Next turn is B
            notifyAll(); // Wake up waiting threads
        }
    }

    public synchronized void printB() throws InterruptedException {
        for (int i = 0; i < 5; i++) {
            while (turn != 2) {
                wait(); // Not B's turn → wait
            }
            System.out.print("B ");
            turn = 3; // Next turn is C
            notifyAll();
        }
    }

    public synchronized void printC() throws InterruptedException {
        for (int i = 0; i < 5; i++) {
            while (turn != 3) {
                wait(); // Not C's turn → wait
            }
            System.out.print("C ");
            turn = 1; // Next turn is A
            notifyAll();
        }
    }
}

public class itc {
    public static void main(String[] args) {
        Printer printer = new Printer();

        Thread t1 = new Thread(() -> {
            try { printer.printA(); } catch (InterruptedException e) {}
        });

        Thread t2 = new Thread(() -> {
            try { printer.printB(); } catch (InterruptedException e) {}
        });

        Thread t3 = new Thread(() -> {
            try { printer.printC(); } catch (InterruptedException e) {}
        });

        t1.start();
        t2.start();
        t3.start();
    }
}
