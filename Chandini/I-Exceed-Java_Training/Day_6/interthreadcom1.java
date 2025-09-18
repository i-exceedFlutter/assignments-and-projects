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
  		System.out.println("Total balance amount : "+this.amount);  
 
	}
 
     synchronized void deposit(int amount)

	{

	  System.out.println("going to deposit...");      

	  this.amount+=amount;      

  	  System.out.println("deposit completed... ");  
  	  System.out.println("Total balance amount : "+this.amount);   

	  notify();   	

	}

  }
 
 
class interthreadcom1

{

   public static void main(String asd[])

	{

	   customer c=new customer();

	   Thread t1 = new Thread(){

		public void run()

		{

		   c.withdraw(5000);

		}	

		};
            t1.start();
	    Thread t2 = new Thread(){

			public void run()

			{

			 c.deposit(20000);

			}

			};
            t2.start();
            new Thread(){

			public void run()

			{

			 c.withdraw(3000);

			}

			}.start();

	}

}
 