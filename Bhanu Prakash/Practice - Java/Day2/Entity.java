
class Employee {
    String empName, department;
    int empId;
    Company company; 

    Employee(String empName, int empId, String department, Company company) {
        this.empName = empName;
        this.empId = empId;
        this.department = department;
        this.company = company;
    }

    public void displayEmployee() {
        System.out.println("Employee Name = " + empName);
        System.out.println("Employee ID = " + empId);
        System.out.println("Department = " + department);
        company.displayCompany(); 
    }
}

public class Entity {
    public static void main(String[] args) {
        Company c1 = new Company("I-Exceed", "Bnglr", 341223);
        Employee e1 = new Employee("Bhanu", 1001, "L&D", c1);

        e1.displayEmployee();
    }
}
