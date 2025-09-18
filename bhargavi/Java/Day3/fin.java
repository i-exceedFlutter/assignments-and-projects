interface sample {
    static final String name = "john";  

    public void dis();  
}

class demo implements sample {
    @Override
    public void dis() {
        System.out.println("Name is: " + name);  
    }
}

class fin {
    public static void main(String args[]) {
        demo d = new demo();
        d.dis();  
    }
}
