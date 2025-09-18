class college
{
	public void student()
	{
		System.out.println("Base class");
	}
}
class college1 extends college
{
	public void student()
	{
	System.out.println("Derived class");
	}
}
class demoOverriding
{
	public static void main(String args[])
	{
		college ref;
		ref=new college1();
		ref.student();
	}
}