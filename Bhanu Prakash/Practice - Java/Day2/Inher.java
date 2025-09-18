class Person {
    String name;
    int age;

    Person(String name, int age) {
        this.name = name;
        this.age = age;
    }

    public void displayPerson() {
        System.out.println("Name: " + name);
        System.out.println("Age: " + age);
    }
}


class Employee extends Person {
    int empId;
    String department;
    double salary;

    Employee(String name, int age, int empId, String department, double salary) {
        super(name, age); 
        this.empId = empId;
        this.department = department;
        this.salary = salary;
    }

    public void displayEmployee() {
        System.out.println("Employee ID: " + empId);
        System.out.println("Department: " + department);
        System.out.println("Salary: " + salary);
    }
}


public class Inher {
    public static void main(String[] args) {
        Employee emp = new Employee("Bhanu", 28, 300, "IT", 20000);
        emp.displayPerson();    
        emp.displayEmployee(); 
    }
}
