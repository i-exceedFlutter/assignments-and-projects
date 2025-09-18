class student{
    String nam,cty;
    int ag;
     student(String name,int age,String city){
	  nam=name;
	  ag=age;
	  cty=city; 
	}
      public void displayStudent(){
	   System.out.println(nam);
	   System.out.println(ag);
	   System.out.println(cty);
	}
}
class instancevariable{
    public static void main(String as[]){
	    student s1= new student("sai",21,"nandyal");
        //student s2= new student("sathishsivam",53,"salem");
	    s1.displayStudent();
 
	}
}