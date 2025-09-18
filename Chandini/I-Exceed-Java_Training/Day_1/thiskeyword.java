class Product {

    // Default constructor
    product() {
        this("Laptop");   // calls String constructor
        System.out.println("Inside default constructor");
    }

    // Constructor with String parameter
    product(String name) {
        this(500, 2);   // calls int,int constructor
        System.out.println("Inside String constructor: " + name);
    }

    // Constructor with two int parameters
    product(int price, int quantity) {
        System.out.println("Inside int,int constructor");
        System.out.println("Total Price: " + (price * quantity));
    }
}

class thiskeyword {
    public static void main(String[] args) {
        product p1 = new product();  // triggers constructor chaining
    }
}
