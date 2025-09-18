class demoblocks {

    public static void main(String[] asd) {
        new demoblocks();  // Creating an instance triggers instance blocks and constructor
    }
	
	static {
        System.out.println("Hi all");
    }
	
	static{System.out.println("static one");}

    {
        System.out.println("one");
    }

    {
        System.out.println("two");
    }

    {
        System.out.println("three");
    }
	
    demoblocks() {
        System.out.println("default constructor");
    }
}
