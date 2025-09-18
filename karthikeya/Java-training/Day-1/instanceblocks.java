class instanceblocks
{
    public static void main(String args[])
	{
	   new instanceblocks();
	}
	
	static //static blocks-1st priority
	{
		System.out.println("Chill broo");
	}
	
	
 
	instanceblocks()	// then 3rd priority for constructor 
	{
	   System.out.println("default constructor");
	}
 
	{				
	   System.out.println("Saaari"); // instance blocks-2nd priority
	}
	{
	   System.out.println("gaaama");
	}
	{
	   System.out.println("Paadaneesa");
	}

}