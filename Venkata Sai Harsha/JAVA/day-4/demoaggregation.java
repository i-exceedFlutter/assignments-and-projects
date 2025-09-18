class Teacher {
    Qualification qt; // Aggregation: reference only
    String name, dept;

    Teacher(String name, String dept, Qualification qt) {
        this.qt = qt; // assigned externally (aggregation)
        this.name = name;
        this.dept = dept;
    }

    public void displayTeacher() {
        System.out.println("Trainer name\t" + name);
        System.out.println("Department\t" + dept);
        qt.displayQualification();
    }
}

class Qualification {
    String ug, pg;
    int yoe;

    public Qualification(String ug, String pg, int yoe) {
        this.ug = ug;
        this.pg = pg;
        this.yoe = yoe;
    }

    public void displayQualification() {
        System.out.println("UG Degree\t" + ug);
        System.out.println("PG Degree\t" + pg);
        System.out.println("Experience\t" + yoe);
    }
}

public class demoaggregation {
    public static void main(String[] args) {
        // Create Qualification object independently
        Qualification q = new Qualification("BE", "ME", 25);

        // Pass it to the Teacher (aggregation)
        Teacher t = new Teacher("Sathishsivam", "L&D", q);
        t.displayTeacher();
    }
}
