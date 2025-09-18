class staticvariableprops1
 {
    static int x,y;       // static variable
	static int a;
    static public void add(int x,int y)    // static method
    {
        System.out.println(x + y);
    }
	
    static
	{                 // static block
        add(3,7);
    }
 
    static
	{                 // static block
        add(1,5);
    }
	
	public void nonstatic()
	{
		add(2,4);
		a=200;
		System.out.println(a);
	}
	
    public static void main(String[] args) //main block can be directly accessed through JVM
	{
		staticvariableprops1 ob = new staticvariableprops1();
        ob.nonstatic();
    }
 }