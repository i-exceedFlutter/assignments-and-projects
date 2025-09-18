// First abstract class
abstract class Machine {
    String machineType;

    Machine(String machineType) {
        this.machineType = machineType;
    }

    abstract void powerOn();
    abstract void powerOff();

    void showType() {
        System.out.println("Machine type: " + machineType);
    }
}

// Second abstract class extending first abstract class
abstract class Vehicle extends Machine {
    int wheels;

    Vehicle(String machineType, int wheels) {
        super(machineType);
        this.wheels = wheels;
    }

    abstract void move();

    void showWheels() {
        System.out.println("Number of wheels: " + wheels);
    }
}

// Concrete class extending the second abstract class
class Car extends Vehicle {
    String brand;

    Car(String machineType, int wheels, String brand) {
        super(machineType, wheels);
        this.brand = brand;
    }

    // Implement all abstract methods from Machine and Vehicle
    @Override
    void powerOn() {
        System.out.println("Car powered on");
    }

    @Override
    void powerOff() {
        System.out.println("Car powered off");
    }

    @Override
    void move() {
        System.out.println("Car is moving");
    }

    void showBrand() {
        System.out.println("Brand: " + brand);
    }
}

// Main class
public class abs {
    public static void main(String[] args) {
        Car myCar = new Car("Automobile", 4, "Honda");
        myCar.showType();
        myCar.showWheels();
        myCar.showBrand();

        myCar.powerOn();
        myCar.move();
        myCar.powerOff();
    }
}
