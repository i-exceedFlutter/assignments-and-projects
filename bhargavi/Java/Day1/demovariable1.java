class animal
{
    String breed;
    int age;
 
     animal(String breed,int age)
	{
	  this.breed=breed;
	  this.age=age;
	  
	}
      public void display()
	{
	   System.out.println(breed);
	   System.out.println(age);
	   
 
	}
}
 
 
class demovariable1
{
    public static void main(String as[])
	{
	   animal a1= new animal("lab",2);
	   a1.display();
 
	}
}