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
class dynamicmd{
	public static void main(String asd[]){
		sample obj=new sample1();
		//sample obj=new sample();
		obj.pr();
	}
}