class college1
{
	String name="Tarun";
	public void student1(String name)
	{
		this.name=name;
		System.out.print(name);
	}
}
class college2 extends college1
{
	college2()
	{
	name="Samudrala ";    // no nedd to declare because it's extending properties from super class
	System.out.print(name);
	}
}
class demoInheritance
{
	public static void main(String args[])
	{
		new college2().student1("Tarunika");
	}
}