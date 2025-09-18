class customer
{
     int amount;
 
     synchronized void withdraw(int amount)
	{
	  System.out.println("going to withdraw...");      
  	  if(this.amount<amount)
	   {      
    		System.out.println("Less balance; waiting for deposit...");
		try{      
         	wait();
		}catch(Exception d){}
  	    }      
  		this.amount-=amount;      
  		System.out.println("withdraw completed...");    
 
	}
 
     synchronized void deposit(int amount)
	{
	  System.out.println("going to deposit...");      
	  this.amount+=amount;      
  	  System.out.println("deposit completed... ");   
	  notify();   	
	}
  }
 
 
class demoInterThreadCommunication
{
   public static void main(String asd[])
	{
	   customer c=new customer();
	   new Thread(){
		public void run()
		{
		   c.withdraw(10000);
		}	
		}.start();
 
	    new Thread(){
			public void run()
			{
			 c.deposit(20000);
			}
			}.start();
	}
}