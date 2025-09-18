class student
{
    String name,city;	// instance variables 
    int age,POY;
	double CGPA;

 
     student(String name,int age,String city,double CGPA,int POY)
	{
	  this.name=name;
	  this.age=age;
	  this.city=city; 
	  this.CGPA=CGPA;
	  this.POY=POY;
	  System.out.println(this);
	  displayStudent();   // which is used to call the current class method, you can use this.displayStudent also.
	}
 
      public void displayStudent()
	{
	   System.out.println(name);
	   System.out.println(age);
	   System.out.println(city);
	   System.out.println(CGPA);
	   System.out.println(POY);
	}
}
 
 
class thiscurrentclassmethod
{
    public static void main(String args[])
	{
	    new student("syam",21,"BZA",8.3,2025); // no need to assign to another reference variable as you are calling displayStudent() in the constructor itself
		new student("Niharika",21,"BLR",9.5,2025);
	}
  }