mixin studentDetails {
  mixinDetails(name) {
    print(
      "Name in mixin",
    ); //cannot call mixin methods directly from main, super cannot be used
  }
}

class Student with studentDetails {
  details(name) {
    print("Name in class Student");
  }
}

class Employee extends Student with studentDetails {
  details(name) {
    print("Name in class employee ");
  }
}

void main() {
  Student obj = Student();
  obj.details("Subanu"); //prints display in class Student
  Employee obj2 = Employee();
  obj2.details("Abhi"); //prints display in class Employee
  obj2.mixinDetails(
    "mixin",
  ); //can call mixin methods only if it  has a unique name or it'll be overridden and it can be called through the instance of the subclass
}
