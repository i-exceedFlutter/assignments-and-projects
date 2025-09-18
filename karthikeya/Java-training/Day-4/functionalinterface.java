@FunctionalInterface // a type of interface where we can declare only one abstract method(can be static and default as well)
interface data
 {
    public void add(int a, int b);
 }
 
 class functionalinterface
  {
     public static void main(String[] args) 
	 {
        new data(){                    // we can override a method without using "implements" by creating an object for the interface
             public void add(int a,int b)
             {
                System.out.println("sum =" + (a+b));
             }
 
         }.add(4,4);
		 
		 
/* 		   data d = new data()       // the above and below, both are same but here we are using reference variable for the object
		   {
             public void add(int a,int b)
             {
                System.out.println("sum =" + (a+b));
             }
 
         };
		 
		 d.add(4,4); */
     }
     
  }