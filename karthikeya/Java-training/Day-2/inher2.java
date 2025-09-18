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
	  super(name,empno,city); // we are calling the super class so that the class will be executed 1st
	  this.salary=salary;
	  this.desig=desig;
	  //System.out.println(name +"with"+roll+"belongs to"+city); //we can call the print statement here as well by removing displayStudent method as we are calling the super class 
	}
     public void displayTecher()
	{
	   System.out.println("Designation="+desig);
	   System.out.println("Salary="+salary);
	}
}
  
class inher2
  {
     static public void main(String asd[])
	{
	   teacher t1= new teacher("Sivam",10,"Blore","Hod",200000);
	   teacher t2 = new teacher("sundaram",20,"Chennai","Proff",30000);
	   t1.displayStudent();
	   t1.displayTecher();
	   t2.displayStudent();
	   t2.displayTecher();
	}
  }