class student{
    String name,city;	// instance variables 
    int age;
    student(String name,int age,String city){
	    this.name=name;
		this.age=age;
		this.city=city; 
		System.out.println(this);
	}
 
    public void displayStudent(){
		System.out.println(name);
		System.out.println(age);
		System.out.println(city);
	}
}
public class demovariable{
    public static void main(String as[]){
	    student s1= new student("sivam",23,"salem");
        student s2= new student("sathishsivam",53,"salem");
	    s1.displayStudent();
	    System.out.println(s1);
	    System.out.println(s2);
	}
  }