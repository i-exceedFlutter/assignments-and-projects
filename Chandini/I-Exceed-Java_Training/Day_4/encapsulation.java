class Student {
    private String name;
    private int age;

    // Getter for name
    public String getName() {
        return name;
    }

    // Setter for name
    public void setName(String name) {
        this.name = name;
    }

    // Getter for age
    public int getAge() {
        return age;
    }

    // Setter for age
    public void setAge(int age) {
        if(age > 0) {   
            this.age = age;
        }
    }
}

public class encapsulation {
    public static void main(String[] args) {
        Student s = new Student();

        // using setters
        s.setName("Chandini");
        s.setAge(22);

        // using getters
        System.out.println("Name: " + s.getName());
        System.out.println("Age: " + s.getAge());
    }
}
