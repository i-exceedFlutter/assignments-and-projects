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

  		System.out.println("withdraw completed..."+this.amount);    
 
	}
 
     synchronized void deposit(int amount)

	{

	  System.out.println("going to deposit...");      

	  this.amount+=amount;      

  	  System.out.println("deposit completed... "+this.amount);   

	  notify();   	

	}

  }
 
 
class interthr1

{

   public static void main(String asd[])

	{

	   customer c=new customer();

	   Thread t1=new Thread(){

		public void run()

		{

		   c.deposit(10000);

		}	

		};
            
 
	    Thread t2=new Thread(){

			public void run()

			{

			 c.withdraw(5000);

			}

			};
           
           Thread t3=new Thread(){

			public void run()

			{

			 c.deposit(10000);

			}

			};
            t1.start();
            t2.start();
            t3.start();
            try {
            // Wait for all threads to finish
            t1.join();
            t2.join();
            t3.join();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
          


	}

}
 

 