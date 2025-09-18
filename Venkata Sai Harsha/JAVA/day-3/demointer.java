interface one{
    static void getMe(){
        System.out.println("static method from interface");
    }
	default public void get1(){
		System.out.println("default method from interface");
	}
 }
 
 class sample implements one {
    
 
 }
 
class demointer
 {
    public static void main(String[] args) {
        sample obj=new sample();
        one.getMe();
		obj.get1();
		
    }
 }