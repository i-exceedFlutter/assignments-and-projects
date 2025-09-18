class student
  {
     String name,city;
     int roll;
     student(String name,int roll,String city)
	{
          this.name=name;
	  this.roll=roll;
	  this.city=city;
	}
     public void displayStudent()
	{
	   System.out.println(name +"with"+roll+"belongs to"+city);
	}
   }

class teacher extends student
{
    String desig;
    double salary;
    teacher(String name,int empno,String city,String desig,double salary)
	{
	  super(name,empno,city);
	  this.salary=salary;
	  this.desig=desig;
	}
     public void displayTecher()
	{
	   System.out.println("Designation="+desig);
	   System.out.println("Salary="+salary);
	}
  }

class inheritance3
  {
     static public void main(String asd[])
	{
	   teacher t1= new teacher("Sivam",1,"Blore","Hod",20000);
	   t1.displayStudent();
	   t1.displayTecher();
	}
  }
 