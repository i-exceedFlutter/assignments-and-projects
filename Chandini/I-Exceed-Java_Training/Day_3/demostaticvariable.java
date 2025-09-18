class sample
 {
    stint x=100;
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
 
 class demostaticvariable
 {
    public static void main(String[] args) {
        sample ob=new sample();
        ob.nonstaticmethod();
    }
 }
 