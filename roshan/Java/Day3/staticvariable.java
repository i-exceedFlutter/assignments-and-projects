class sample
 {
    static int x=100;
    /*static variable can be accessed in non static blocks and static blocks as well but, non-static cant be accesses in the static blocks*/

    /* int y = 90; 
    static public void staticmethod(){
	y=100;
    }       this will lead to an error */

    sample()
    {
        x=120;
    }
    static public void staticmethod()
    {
        x=120;
    }
 
    public void nonstaticmethod(){
        x=230;
    }
 }
 
 class staticvariable
 {
    public static void main(String[] args) {
        sample ob=new sample();
        ob.nonstaticmethod();
    }
 }