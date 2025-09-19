class Vehicle {
    String type;
    int wheels;

    Vehicle(String type, int wheels) {
        this.type = type;   // 'this' refers to instance variable
        this.wheels = wheels;
    }

    public void display() {
        System.out.println("Vehicle type: " + type);
        System.out.println("Number of wheels: " + wheels);
    }
}

class Car extends Vehicle {
    String model;
    String color;

    Car(String model, String color, String type, int wheels) {
        super(type, wheels);   // call parent constructor
        this.model = model;    // 'this' refers to instance variables
        this.color = color;
    }

    public void display() {
        super.display();    // call parent display
        System.out.println("Car model: " + model);
        System.out.println("Car color: " + color);
    }
}

class inheritance {
    public static void main(String[] args) {
        Car myCar = new Car("Tesla Model S", "Red", "Car", 4);
        myCar.display();
    }
}
