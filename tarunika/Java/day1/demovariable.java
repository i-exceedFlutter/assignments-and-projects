class student
{
    String nam,cty;     //instance variable
    int ag;
 
     student(String name,int age,String city)
	{
	  nam=name;
	  ag=age;
	  cty=city; 
	}
      public void displayStudent()
	{
	   System.out.println(nam);
	   System.out.println(ag);
	   System.out.println(cty);
 
	}
}
 
 
class demovariable
{
    public static void main(String as[])
	{
	    student s1= new student("Samudrala",21,"blr");
            student s2= new student("Tarunika",22,"blr");
	    s1.displayStudent();
 
	}
}