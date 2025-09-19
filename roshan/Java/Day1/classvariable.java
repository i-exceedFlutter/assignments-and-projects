class student
{
    String name,city;
    int age;
    static String college="Reva University";    // static keyword is used to inisialize college globally
 
    student(String name,int age,String city)
	{
	  this.name=name;
	  this.age=age;
	  this.city=city;
	  this.displayStudent();
	}
    public void displayStudent()
	{
	   System.out.println("Name="+name);
	   System.out.println("Age="+age);
	   System.out.println("City="+city);
	   System.out.println("College="+student.college);
	}	
}
 
class classvariable
{  
    public static void main(String as[])
	{
	   student s1= new student("rajesh",23,"bengaluru");
	   student s2= new student("rahul",24,"Mumbai");
 	   student s3= new student("suresh",22,"delhi");
	}
}