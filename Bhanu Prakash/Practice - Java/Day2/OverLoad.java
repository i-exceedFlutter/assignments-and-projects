class Calculator {

    
    public int add(int a, int b) {
        return a + b;
    }
    public int add(int a, int b, int c) {
        return a + b + c;
    }
    public double add(double a, double b) {
        return a + b;
    }
    
}

public class OverLoad {
    public static void main(String[] args) {
        Calculator c = new Calculator();
        System.out.println(c.add(2.2,3.2));
        System.out.println(c.add(2,3,4,));

        
       
    }
}

