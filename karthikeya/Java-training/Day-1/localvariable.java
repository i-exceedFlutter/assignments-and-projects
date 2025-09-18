class student
{
/* 	string name,city;
	int age,POY;
	double CGPA; */
 
     student(String name,int age,String city,double CGPA,int POY)  //local variables used only within the block
	{
	  //name="Syam";
	  //age=21;
	  //city="Vijayawada"; 
	  //CGPA=8.3;
	  //POY=2025;
	  
	   System.out.println(name);
	   System.out.println(age);
	   System.out.println(city);
	   System.out.println(CGPA);
	   System.out.println(POY);
	}
/*       public void displayStudent()
	{
	   System.out.println(name);
	   System.out.println(age);
	   System.out.println(city);
	   System.out.println(CGPA);
	   System.out.println(POY);

	} */
}
 
 
class localvariable
{
    public static void main(String args[])
	{
	    student S1=new student("Syam",21,"Vijayawada",8.3,2025);
	    //S1.displayStudent();
 
	}
}

