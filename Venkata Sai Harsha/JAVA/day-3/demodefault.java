interface one{
	public void get();
	public void get2();
}
interface sample extends one{
	@Override
	default public void get(){
		System.out.println("inside child class");
	}
	public void get1();
}
class sample1 implements sample{
	public void get1(){
		System.out.println("inside second child class");
	}
	public void get2(){
		System.out.println("get2");
	}
}
class demodefault{
	public static void main(String asd[]){
		sample1 obj=new sample1();
		obj.get();
		obj.get1();
		obj.get2();
	}
}