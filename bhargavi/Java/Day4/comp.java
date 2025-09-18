class Address {
    String city, state;

    public Address(String city, String state) {
        this.city = city;
        this.state = state;
    }

    public void displayAddress() {
        System.out.println("City: " + city);
        System.out.println("State: " + state);
    }
}

class Student {
    String name;
    Address address;

    public Student(String name, String city, String state) {
        this.name = name;
        this.address = new Address(city, state);
    }

    public void displayStudent() {
        System.out.println("Student Name: " + name);
        address.displayAddress();
    }
}

public class comp {
    public static void main(String[] args) {
        Student s = new Student("John", "Chennai", "Tamil Nadu");
        s.displayStudent();
    }
}
