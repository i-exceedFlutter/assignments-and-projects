void greet(String name, int age) //default parameters or positional
{
  print("Hello $name, you are $age years old.");
}

void greet1
({
  String? name,
  int? age,
}) //named parameters should be in curly braces
{
  print("Hello $name, you are $age years old.");
}

void greet2({
  String name = "Karthik",
  int age = 18,
}) //named parameters with default values, it also an option parameter by default
{
  print("Hello $name, you are $age years old.");
}

void describe
(
  String name, [
  int? age,
  String country = "Unknown",
]) //optional parameters will be inferred by square brackets
{
  print("Name: $name, Age: $age, Country: $country");
}

void bookTicket(
  String movie, {
  int seats = 1,
  required String name,
}) //required means it should not be null
{
  print("$name booked $seats seat(s) for $movie.");
}

void main() {
  greet(
    "Syam",
    21,
  ); // Positional parameters,should be in the order as declared in function

  greet1(age: 30, name: "Bhanu");

  greet2();
  greet2(name: "Moshin");
  greet2(age: 40);
  greet2(name: "Tarun", age: 22);

  describe("Syam");
  describe("Tarunika", 25);
  describe("Harsha", 25, "India");

  bookTicket("Inception", name: "Ravi");
  bookTicket("Inception", seats: 3, name: "Priya");
}
