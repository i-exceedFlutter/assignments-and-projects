class Person {
  String name;
  int age;
  String city;

  // Constructs a [Person] instance with the given [name], [age], and [city].
  // Uses shorthand syntax for initializing non-nullable fields.
  Person(this.name, this.age, this.city);

  void display() {
    print("$name $age $city");
  }
}

// An extension on the [Person] class to add greeting capabilities.
// Extension methods must be defined at the top level, not inside a class.
extension Greetings on Person {
  // Generates a personalized greeting string.
  // [str] is the initial greeting phrase (e.g., "Welcome").
  // The method appends the person's name to make the greeting more meaningful.
  String greetMe(String str) {
    return "$str, $name!";
  }
}

// An extension on nullable [String] types to provide string manipulation utilities.
// The extension name follows the Dart style guide (UpperCamelCase).
extension MakeMeStringExtension on String? {
  // Trims whitespace from the string and replaces all occurrences of a substring.
  // [replaceWhat] is the substring to be replaced.
  // [replaceBy] is the string to replace [replaceWhat] with.
  //
  // This method operates on `this` (the string instance the extension is called on).
  // If `this` (the string itself) is null, it defaults to an empty string before processing.
  String trimAndReplace(String replaceWhat, String replaceBy) {
    // If the string itself is null, treat it as an empty string before processing.
    String safeString = this ?? '';
    return safeString.trim().replaceAll(replaceWhat, replaceBy);
  }
}


void main() {
  Person p1 = Person("sai", 21, "Nandyal");
  p1.display();
  print(p1.greetMe("Welcome"));
  
  String str = "Hi! how is you";

  // Call the trimAndReplace extension method directly on the string instance.
  // The method now uses 'this', so the string itself is not passed as an argument.
  // It trims the string (though not much to trim here) and replaces "is" with "are".
  var res = str.trimAndReplace("is", "are");
  print(res);
}