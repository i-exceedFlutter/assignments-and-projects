class student{
    String name,city;
    int age;
     student(String name,int age,String city){
	  this.name=name;
	  this.age=age;
	  this.city=city; 
	  System.out.println(this);
	  displayStudent();
	}
      public void displayStudent(){
	   System.out.println(name);
	   System.out.println(age);
	   System.out.println(city);
	}
}
class instancevariablethis{
    public static void main(String as[]){
	    student s1= new student("sai",21,"nandyal");
        //student s2= new student("sathishsivam",53,"salem");
	    //s1.displayStudent();
	}
}