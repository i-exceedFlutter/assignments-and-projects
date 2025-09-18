class student
{
    String name,city;
    int age,POY;
	double CGPA;
    static String college="Amrita"; //it is a class variable where the memory for the variable is allocated in static pool globally and it can't be associated with the object and its value cant be changed 
 
    static
    {
	   System.out.println("welcome all to this static block");// this has given most priority than everything(constructor or Instance initiator block)
	}
 
    student(String name,int age,String city, double CGPA,int POY)
	{
	  this.name=name;
	  this.age=age;
	  this.city=city;
	  this.CGPA=CGPA;
	  this.POY=POY;
	  this.displayStudent(); // current class method
	}
    public void displayStudent()
	{
	   System.out.println("Name="+name);
	   System.out.println("Age="+age);
	   System.out.println("City="+city);
	   System.out.println("CGPA="+CGPA);
	   System.out.println("POY="+POY);
	   System.out.println("College="+student.college);// the class variable/static variable can be directly accessed with the class, no need of object for them
	}	
}
 
class classvariablestaticblock
{  
    public static void main(String args[])
	{
	   student s1= new student("Syam",21,"Blr",8.3,2025);
	   student s2= new student("Karthik",22,"Chennai",9.9,2024);
	}
}