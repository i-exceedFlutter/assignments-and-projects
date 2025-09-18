void main() 
{
  String name = "WELCOME to DART!";
  print('Lowercase: ${name.toLowerCase()}');
  print('First name: ${name.substring(0, 7)}');
  print('Updated: ${name.replaceAll("WELCOME", "HELLO")}');
  print('Length of the word: ${name.length}');
  print('Contains Dart? ${name.contains("DART")}');
}
