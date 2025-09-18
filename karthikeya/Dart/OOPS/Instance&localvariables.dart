class Person {
  // Instance variables
  String name =
      "Sai"; //non-nullable instance variables should be initialized at the time of declaration
  int age = 15;
  String?
  city; // nullable instance variables will be defined as null by default

  void setDetails(String n, int a, String p) //local variables
  {
    String status = "active";
    name = n;
    age = a;
    city = p;
    print("Status: $status"); //can be accessed only in this block
  }

  void display() {
    print("Name: $name, Age: $age, city:$city");
  }
}

class Car {
  late String model; // initialized later
  late int year;

  void setCar(String m, int y) {
    model = m;
    year = y;
  }

  void displayCar() {
    print("Car Model: $model, Year: $year");
  }
}

void main() {
  var p1 = Person();
  p1.setDetails("Arjun", 25, "Hyderabad");
  p1.display();

  var c1 = Car();
  c1.setCar("BMW", 2022);
  c1.displayCar();
}
