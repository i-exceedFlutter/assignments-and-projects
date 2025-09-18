class Vehicle {
    void speed() {
        System.out.println("speeds");
    }
}

class Car extends Vehicle {
    @Override
    void speed() {
        System.out.println("100 km/h");
    }
}

class Bike extends Vehicle {
    @Override
    void speed() {
        System.out.println("20 km/h");
    }
}

public class Override1 {
    public static void main(String[] args) {
        Vehicle v1 = new Vehicle();
        Vehicle v2 = new Car();
        Vehicle v3 = new Bike();

        v1.speed();  
        v2.speed();  
        v3.speed();  
    }
}
