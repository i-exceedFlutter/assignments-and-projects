class student{
    String name,city;
    int age;
	static String company="i-exceed";
     student(String name,int age,String city){
	  this.name=name;
	  this.age=age;
	  this.city=city; 
	  displayStudent();
	}
      public void displayStudent(){
	   System.out.println(name);
	   System.out.println(age);
	   System.out.println(city);
	   System.out.println(student.company);
	}
}
class instancevariablestatic{
    public static void main(String as[]){
	    student s1= new student("sai",21,"nandyal");
        student s2= new student("harsha",23,"kerala");
	    //s1.displayStudent();
	}
}