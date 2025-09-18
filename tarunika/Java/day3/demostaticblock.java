 
class demostaticblock
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
        x=200;
        display();
    }
    public static void main(String[] args) {
       System.out.println("Main method");
    }
 }
 