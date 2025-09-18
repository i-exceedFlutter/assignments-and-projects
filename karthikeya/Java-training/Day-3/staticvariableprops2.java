class sample
 {
    static int x=100; // static variable
	int y; //instance variable
	
    sample()
    {
        x=400; 
    }
    static public void staticmethod()
    {
        x=120;
		//y=200;   // you cant use a non static variable in a static block, gives you error.
		System.out.println(x);
    }
 
    public void nonstaticmethod()
	{
        x=230;    // this 230 over writes the old x value and staticvariable can be used in any method
		y=200;
		System.out.println(x);
		System.out.println(y);
    }
 }
 
 class staticvariableprops2
 {
    public static void main(String[] args)
	{
        sample ob=new sample();
        ob.nonstaticmethod();
    }
 }
 