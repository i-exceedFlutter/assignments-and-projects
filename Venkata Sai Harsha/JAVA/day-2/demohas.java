class employee {
    String empname, department;
    int empage;
    location location;

    employee(String empname, int empAge, String department, location location) {
        this.empname = empname;
        this.empage = empage;
        this.department = department;
        this.location = location;
    }

    public void showdetails() {
        System.out.println("Employee Name: " + empname);
        System.out.println("Age: " + empage);
        System.out.println("Department: " + department);
        location.showlocation();
    }
}

class location {
    String street, city;
    int zip;

    location(String street, String city, int zip) {
        this.street = street;
        this.city = city;
        this.zip = zip;
    }

    public void showlocation() {
        System.out.println("Street: " + street);
        System.out.println("City: " + city);
        System.out.println("ZIP: " + zip);
    }
}

class demohas {
    public static void main(String[] args) {
        location loc1 = new location("MG Road", "Hyderabad", 500001);
        employee emp1 = new employee("Rahul", 30, "IT", loc1);
        emp1.showdetails();
    }
}

