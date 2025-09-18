// === Closure ===
Function makeGreeter(String name) {
  return () {
    print("Hello, $name");
  };
}

void demoClosure() {
  var greetBhanu = makeGreeter("Bhanu");
  var greetPrakash = makeGreeter("Prakash");

  greetBhanu();
  greetPrakash();

  var res = add(10, 20);
  print(res);
  var res1 = add1(30, 40);
  print(res1);
}

int add(int x, int y) => x + y;
var add1 = (int x, int y) => x + y;


// === Lambda Expression ===
void demoLambda() {
  var square = (int x) => x * x;
  print(square(6));

  var numbers = [1, 2, 3, 4, 5, 6];
  var evens = numbers.where((n) => n.isEven);
  print(evens.toList());

  var numbers2 = [1, 2, 3, 4];
  var sum = numbers2.reduce((a, b) => a + b);
  print(sum);
}


// === Higher-Order Functions ===

// Function as a parameter
void performOperation(int a, int b, int Function(int, int) operation) {
  print("Result: ${operation(a, b)}");
}

void demoHOFParam() {
  performOperation(5, 3, (x, y) => x + y);
  performOperation(5, 3, (x, y) => x * y);
}

// Returning another function
Function multiplier(int n) {
  return (int x) => x * n;
}

void demoHOFReturn() {
  var doubleIt = multiplier(2);
  var tripleIt = multiplier(3);

  print(doubleIt(4));
  print(tripleIt(4));
}

// Built-in higher order functions
void demoBuiltInHOF() {
  var numbers = [1, 2, 3, 4, 5];

  var squares = numbers.map((n) => n * n);
  var evens = numbers.where((n) => n.isEven);
  var sum = numbers.reduce((a, b) => a + b);

  print(squares.toList());
  print(evens.toList());
  print(sum);
}


// === Class and Objects in Dart ===
class Car {
  String brand;
  int year;

  Car(this.brand, this.year);

  void displayInfo() {
    print("Car Brand: $brand, Manufactured Year: $year");
  }
}

void demoClassObjects() {
  Car myCar = Car("Tesla", 2023);
  myCar.displayInfo();
}


// === This Keyword ===
class Student {
  String? name;
  int? age;

  Student(String name, int age) {
    this.name = name;
    this.age = age;
  }

  void display() {
    print("Name: $name, Age: ${this.age}");
  }
}

void demoThisKeyword() {
  Student s1 = Student("Bhanu", 21);
  s1.display();
  print(s1.name);
}


// === Accessing current class methods with this ===
class Calculator {
  int a;
  int b;

  Calculator(this.a, this.b);

  int add() {
    return a + b;
  }

  void showSum() {
    int result = this.add();
    print("The sum is: $result");
  }
}

void demoThisMethod() {
  Calculator calc = Calculator(10, 20);
  calc.showSum();
}


// === Passing current object using this ===
class Department {
  void show(StudentObj s) {
    print("Student Department linked with: ${s.name}");
  }
}

class StudentObj {
  String name;
  StudentObj(this.name);

  void linkDepartment(Department d) {
    d.show(this);
  }
}

void demoPassingThis() {
  StudentObj s1 = StudentObj("Prakash");
  Department d1 = Department();
  s1.linkDepartment(d1);
}


// === Method Chaining ===
class ChainCalculator {
  int value = 0;

  ChainCalculator add(int x) {
    value += x;
    return this;
  }

  ChainCalculator multiply(int x) {
    value *= x;
    return this;
  }

  void showResult() {
    print("Result: $value");
  }
}

void demoMethodChaining() {
  ChainCalculator calc = ChainCalculator();
  calc.add(5).multiply(3).showResult();
}


// === Constructor Example ===
class EmployeeData {
  String? name, desig;
  int? empId, salary;

  EmployeeData(String name, int empId, String desig, int salary) {
    this.name = name;
    this.empId = empId;
    this.desig = desig;
    this.salary = salary;
  }

  void displayEmployee() {
    print("Name of the employee: ${this.name}");
    print("id of the employee: ${this.empId}");
    print("employee designation: ${this.desig}");
    print("Salary: ${this.salary}");
    print(this);
  }
}

void demoConstructor() {
  EmployeeData e = EmployeeData("Prakash", 4784, "Software", 20000);
  e.displayEmployee();
}


// === List Operations ===
void demoListOps() {
  List<String> l1 = ["java", "js", "python", "dart"];
  l1.add("c");
  print(l1);

  List<String> l2 = ["c", "c++", "pascal", "cobol"];
  l1.addAll(l2);

  print(l1);

  l1.insertAll(0, l2);
  l1.remove("c");
  print(l1);
  l1.removeAt(0);
  print(l1);
  l1.removeLast();
  print(l1);
  l1.removeRange(0, 2);
  print(l1);
  print(l1.contains("apple"));
  print(l1.indexOf("python"));
  print(l1.lastIndexOf("c"));
  l1.sort();
  print(l1);

  var ilanguage = l1.map((i) => i.startsWith('j'));
  print(ilanguage);
  var lan = l1.where((i) => i.startsWith('j'));
  print(lan);

  l1.shuffle();
  print(l1);

  List<int>? l5 = [];
  List<int> l6 = [...l5, 4];
  print(l6);

  List<int>? l7 = null;
  List<int> l8 = [...?l7, 45];
  print(l8);
}


// === Main to Run Demos ===
void main() {
  demoClosure();
  demoLambda();
  demoHOFParam();
  demoHOFReturn();
  demoBuiltInHOF();
  demoClassObjects();
  demoThisKeyword();
  demoThisMethod();
  demoPassingThis();
  demoMethodChaining();
  demoConstructor();
  demoListOps();
}
