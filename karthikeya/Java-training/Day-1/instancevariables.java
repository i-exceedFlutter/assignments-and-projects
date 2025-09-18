class student
{
    String nam,cty;	// instance variables can be used through out the class, seperate memory allocation will takes place for every object for every instance variables
    int ag,YOP;
	double CG;

 
     student(String name,int age,String city,double CGPA,int POY)// if the local and instance variables are different assign instance variables to local variables
	{
	  nam=name;
	  ag=age;
	  cty=city;
	  CG=CGPA;
	  YOP=POY;
	}
 
      public void displayStudent()
	{
	   System.out.println(nam);
	   System.out.println(ag);
	   System.out.println(cty);
	   System.out.println(CG);
	   System.out.println(YOP);
	}
}
 
 
class instancevariables
{
    public static void main(String args[])
	{
	    student s1= new student("syam",21,"Blr",8.3,2025);
        student s2= new student("sivam",22,"salem",7.5,2024);
	    s1.displayStudent();
		s2.displayStudent();
	    System.out.println(s1);
	    System.out.println(s2);
	}
  }