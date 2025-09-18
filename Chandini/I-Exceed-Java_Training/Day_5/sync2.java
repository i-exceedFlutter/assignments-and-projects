class calculate
 {
    public void getTable(int x)
    {
     synchronized (this) 
     {
        for(var i=1;i<=5;i++)
        {
            System.out.println(x*i);
        }    
      }
       
    }
 }
 
 class sync2
  {
    public static void main(String asd[])
    {
       calculate obj=new calculate();
 
        Thread t1=new Thread()
        {
         public void run()
         {
              obj.getTable(5);
       
         }
        };
 
        Thread t2=new Thread(){
            public void run()
            {
                obj.getTable(15);
            }
        };
        t1.start();
        t2.start();
    }
  }
 