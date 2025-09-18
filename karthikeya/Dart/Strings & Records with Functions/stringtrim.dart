main() 
{
  String str = '''this is the string which might be enclosed with triples''';
  print(str);
  
  String name = "    syamkarthik"; 
  print('welcome ${name.trim()}');
  
  String name1 = r"syam\nkarthik"; 
  print(name1);
  print(r'welcome Mr${name1}'); // r" "; means it will print whatever is there in the quotations("").
}