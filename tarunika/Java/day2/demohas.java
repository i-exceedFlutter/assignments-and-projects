class address
{ 
    String st,city;
    int pin;
    address(String st,String city,int pin)
	{
	   this.st=st;
	   this.city=city;
	   this.pin=pin;
	}
    public void displayAddress()
	{
	  System.out.println("Street name="+st);
	  System.out.println("City="+city);
	  System.out.println("Pincode="+pin);
	}
}
class student
{
    String name,dept;
    int age;
    address ads; // entity
 
    student(String name,int age,String dept,address ads)
	{
	  this.name=name;
	  this.age=age;
	  this.dept=dept;
	  this.ads=ads;
	}
     public void displayStudent()
	{
	   System.out.println("Name of the student:"+name);
	   System.out.println("Age="+age);
	   System.out.println("Dept="+dept);
	   ads.displayAddress();
	}
}
 
class demohas
{
   public static void main(String asd[])
	{
            address a1=new address("Electronic City","Bangalore",500000);
	    student s1=new student("Tarunika",21,"CSE",a1);
	    s1.displayStudent();
	}
  }