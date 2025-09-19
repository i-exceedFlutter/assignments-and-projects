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


/* or

class demofunctional {
    public static void main(String[] args) {
        mydata data = () -> System.out.println("Inside the functional interface method");
        data.display1();
    }
}

*/