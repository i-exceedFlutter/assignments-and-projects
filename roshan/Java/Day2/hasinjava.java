
class Engine {
    String model;
    int horsepower;

    // Constructor for Engine class
    Engine(String model, int horsepower) {
        this.model = model;
        this.horsepower = horsepower;
    }

    // Method to display engine details
    public void displayEngine() {
        System.out.println("Engine Model: " + model);
        System.out.println("Horsepower: " + horsepower);
    }
}


class Car {
    String brand;
    String color;
    Engine engine;  // Car "has an" Engine

    Car(String brand, String color, Engine engine) {
        this.brand = brand;
        this.color = color;
        this.engine = engine;
    }


    public void displayCar() {
        System.out.println("Car Brand: " + brand);
        System.out.println("Car Color: " + color);
        engine.displayEngine();  
    }
}

public class hasinjava {
    public static void main(String[] args) {
        Engine eng = new Engine("V8 Turbo", 450);
        Car myCar = new Car("Ford Mustang", "Red", eng);
        myCar.displayCar();
    }
}
