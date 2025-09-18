class sample{
   String name="xyz";
 
    public void callme(String name){
	   this.name=name;
	   System.out.println(name);
	}
}
 
class sample1 extends sample {
    sample1(){
	  name="sai";
	  System.out.println(name);
	}
}
 
class demoinher1{
    public static void main(String asd[]){
	   new sample1().callme("harsha");
	}
}