class Student {
    private String name;
    private int age;

    // Public setter methods
    public void setName(String name) {
        this.name = name;
    }

    public void setAge(int age) {
        if (age > 0) {
            this.age = age;
        }
    }

    // Public getter methods
    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }
}

public class encapsulationPrivateDemo {
    public static void main(String[] args) {
        Student s = new Student();
        s.setName("Samudrala Tarunika");
        s.setAge(21);

        System.out.println(s.getName());
        System.out.println(s.getAge());
    }
}
