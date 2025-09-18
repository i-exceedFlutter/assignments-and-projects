class sample{
    sample(){
		this("welcome");
		//this(1,1);
		System.out.println("inside default constructor");
	}
    sample(String str){
		//this(1,1);
		System.out.println("inside default constructor"+str);
	}
    sample(int x,int y){
		this("Sai");	// which is used to call the current class constructor
		System.out.println(x+y);
	}
}
 
class demothis{
   public static void main(String asd[]){
	 sample obj1 = new sample();
	}
}