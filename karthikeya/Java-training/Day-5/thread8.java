class calculate
 {
    public void getTable(int x)
    {
     synchronized (this) //It serializes access to the critical section across all threads that use the same object.
	 {
        for(var i=1;i<=10;i++)
        {
            System.out.println(x*i);
        }    
     } 
	 
    }
 }
 
 class thread8
 {
    public static void main(String asd[])
    {
       calculate obj=new calculate();
 
        Thread t1=new Thread()
        {
         public void run()
         {
             obj.getTable(10); //same object will be shared between 2 threads, one will wait while the other is running since it is synchronized.       
         }
        };
 
        Thread t2=new Thread()
		{
            public void run()
            {
                obj.getTable(20);
            }
        };
		
        t1.start();// The JVM scheduler decides which runs first.
        t2.start();
    }
 }