class sample
 {
    static int x=100;
    sample()
    {   staticmethod();
        x=130;
	System.out.println(x);
    }
    static public void staticmethod()
    {
        x=120;
	System.out.println(x);
    }
 
    public void nonstaticmethod(){
        x=230;
	System.out.println(x);
    }
 }
 
 class Check
 {
    public static void main(String[] args) {
        sample ob=new sample();
        ob.nonstaticmethod();
    }
 }