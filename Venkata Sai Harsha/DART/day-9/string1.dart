void main() {
  String str = '''this is the string which might be enclosed with triples''';
  print(str);
  String name = "    sathishsivam";
  print('welcome ${name.trim()}');
  String name1 = r"sathish\nsivam"; //this raw string
  //if we to print the statement as it is them we will use r infornt of the string then it will print as it is we call it as raw string
  print('welcome Mr${name1}');
  String s = "venkata\tsai\nharsha";
  print(s);
  print(r'welcome Mr${name1}'); //it will print as it is
}
