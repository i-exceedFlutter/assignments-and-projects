class sample{
	public void pr(){
		System.out.println("none");
	}
}
class sample1 extends sample{
	public void pr(){
		System.out.println("empty");
	}
}
class override{
	public static void main(String asd[]){
		sample1 obj=new sample1();
		obj.pr();
	}
}