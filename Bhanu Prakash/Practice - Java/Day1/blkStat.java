class blkStat
{
    public static void main(String asd[])
	{
	   new blkStat();
	}
	static
	{
		System.out.println("Static blk");
	}
 
	blkStat()	
	{
	   System.out.println("Normal Constructor");
	}
 
	{				
	   System.out.println("AP");
	}
	{
	   System.out.println("KA");
	}
	{
	   System.out.println("TN");
	}
 
	
 
}