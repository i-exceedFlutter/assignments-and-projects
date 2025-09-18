@FunctionalInterface //allows us to write only one abstract method 
interface mydata{
	public void display1();
	//public void diaplay2(); we can't declare two methods
}
 
class demofunctional{
    public static void main(String[] args){
        new mydata(){
            public void display1(){
				System.out.println("Inside the functional interface method");
            }
        }.display1();
		mydata ref=()->System.out.println("using lambda function"); //from java 8 it supported
		ref.display1();
		
    } 
}