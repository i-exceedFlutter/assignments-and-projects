 
@FunctionalInterface
interface data
 {
    public void print();
   
 }
 
 class withoutLambda
  {
     public static void main(String[] args) {
        new data(){
             public void print()
             {
                System.out.println("Inside functional interface");
             }
 
         }.print();
     }
     
  }
 