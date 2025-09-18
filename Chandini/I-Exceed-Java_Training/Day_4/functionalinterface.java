 
@FunctionalInterface
interface mydata
 {
    public void display1();
   
 }
 
 class functionalinterface
  {
     public static void main(String[] args) {
        new mydata(){
             public void display1()
             {
                System.out.println("Inside the functional interface method");
             }
 
         }.display1();
     }
     
  }
 