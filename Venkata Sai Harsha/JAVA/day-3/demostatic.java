class sample{
    static int x=100;
    sample(){
        x=120;
		//static int x=10; we can't declare a static variable in any of the method
    }
    static public void staticmethod()
    {
        x=120;
    }
 
    public void nonstaticmethod(){
        x=230;
    }
 }
 
 class demostatic
 {
    public static void main(String[] args) {
        sample ob=new sample();
        ob.nonstaticmethod();
    }
 }