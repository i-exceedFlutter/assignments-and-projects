
class Company {
    String name, loc;
    int Id;

    Company(String name, String loc, int Id) {
        this.name = name;
        this.loc = loc;
        this.Id = Id;
    }

    public void displayCompany() {
        System.out.println("Company Name = " + name);
        System.out.println("Location = " + loc);
        System.out.println("Id Number = " + Id);
    }
}
