class sample
{
    sample()
	{
	  //this("welcome");
      this(2,2);  //we can only use one current class constructor within a constructor and it is manadatory to call this in the first line itself
	  System.out.println("inside default constructor");
	}

    sample(String str)
	{
	  //this(1,1); //if we call it here it leads to recursive constructor invocation as it runs recursively because in sample(int x,int y) this("Syam") is called again which leads to loop.
	  System.out.println("inside default constructor"+ str);
	}
 
    sample(int x,int y)
	{
	  this("Syam");	// which is used to call the current class constructor 
	  System.out.println(x+y);
	}

}
 
class thisconstructoroverloading

{
   public static void main(String args[])
	{
	  new sample();
	}
}
 