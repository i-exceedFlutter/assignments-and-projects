class Customer {
    int amount = 0;

    synchronized void withdraw(int amount) {
        System.out.println(Thread.currentThread().getName() + ": trying to withdraw " + amount);
        
        while (this.amount < amount) {
            System.out.println(Thread.currentThread().getName() + ": Less balance; waiting for deposit...");
            try {
                wait(5000); // wait for 5 seconds
            } catch (InterruptedException e) {
                System.out.println("Interrupted during wait: " + e);
            }
        
            if (this.amount < amount) {
                System.out.println(Thread.currentThread().getName() + ": Still insufficient balance after waiting. Exiting.");
                return;
            }
        }
        
        this.amount -= amount;
        System.out.println(Thread.currentThread().getName() + ": Withdrawal of " + amount + " completed.");
        System.out.println("Remaining balance: " + this.amount);
    }

    synchronized void deposit(int amount) {
        System.out.println(Thread.currentThread().getName() + ": Depositing " + amount);
        this.amount += amount;
        System.out.println(Thread.currentThread().getName() + ": Deposit completed. Current balance: " + this.amount);
        notify(); 
    }
}

public class BankThread {
    public static void main(String[] args) {
        Customer c = new Customer();

        Thread withdrawThread = new Thread(() -> c.withdraw(10000), "Withdraw");
        Thread depositThread = new Thread(() -> c.deposit(1000), "Deposit");

        withdrawThread.start();

        try {
            Thread.sleep(1000); 
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        depositThread.start();
    }
}
