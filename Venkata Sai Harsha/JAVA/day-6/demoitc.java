class customer{
    int amount;
    synchronized void withdraw(int amount){
		System.out.println("going to withdraw...");      
		while(this.amount<amount){      
			System.out.println("Less balance; waiting for deposit...");
			try{      
				wait();
			}catch(Exception d){}
  	    }      
  		this.amount-=amount;      
  		System.out.println("withdraw completed...");    
	}

    synchronized void deposit(int amount){
		System.out.println("going to deposit...");      
		this.amount+=amount;      
		System.out.println("deposit completed... ");   
		notify();   	
	}
}
 
 
class demoitc{
	public static void main(String asd[]){
		customer c=new customer();
	    new Thread(){
			public void run(){
			   c.withdraw(10000);
			}	
		}.start();
 
	    new Thread(){
			public void run(){
				c.deposit(2000);
			}
		}.start();
		new Thread(){
			public void run(){
				c.deposit(8000);
			}
		}.start();
	}
}