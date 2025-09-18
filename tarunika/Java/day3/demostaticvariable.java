class sample
 {
    static int x=100;  //Static methods can only access static variables
    sample()
    {
        x=120;
    }
    static public void staticmethod()
    {
    	System.out.println(x);
    }
 
    public void nonstaticmethod(){
	System.out.println(x);
    }
 }
 
 class demostaticvariable
 {
    public static void main(String[] args) {
        sample ob=new sample();
        ob.nonstaticmethod();
    }
 }