//static block is executed during loading (prior instantiation) so it will be executed first everytime
//variable from static block can be accessed by the static method as shown below

class staticblock
 {
    static int x;       // static variable
    static public void display()    // static method
    {
        System.out.println(x);
    }
 
    static{                 // static block
        x=100;
        display();
    }
 
    static{                 // static block
        x=200;		    // here the second block overrides the variable value during instatiation
        display();
    }
    public static void main(String[] args) {
       
    }
 }