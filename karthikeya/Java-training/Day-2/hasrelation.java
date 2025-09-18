class student
{
    String name,dept;
    int age;
    address ads; // entity , here we are calling another class of another program in this class( we call this as entity)
 
    student(String name,int age,String dept,address ads)
	{
	  this.name=name;
	  this.age=age;
	  this.dept=dept;
	  this.ads=ads;
	}
     public void displayStudent()
	{
	   System.out.println("Name of the student" + name);
	   System.out.println("Age="+age);
	   System.out.println("Dept="+dept);
	   ads.displayAddress();
	}
}
 
class hasrelation
{
   public static void main(String asd[])
	{
        address a1=new address("Koramangla","Bangalore",560024);
		address a2=new address ("Whitefield","Bengaluru",560036);
		address a3=new address("ECR","Chennai",500240);
		
	    student s1=new student("dharshan",12,"CSE",a1);
		student s2=new student("Syam",21,"EAC",a2);
		student s3=new student("Karthik",23,"EEE",a3);
		
	    s1.displayStudent();
		s2.displayStudent();
		s3.displayStudent();
		
	}
  }