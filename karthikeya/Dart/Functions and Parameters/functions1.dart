void greet(String name) 
{
  print("Hello, $name!");
}

void execute(int a, int b, int Function(int, int) operation) 
{
  print("Result: ${operation(a, b)}");
}

int add(int x, int y) => x + y;
int multiply(int x, int y) => x * y;

void main() 
{
  var myFunc = greet;
  myFunc("SYAM");
  
  execute(5, 3, add);  
  execute(5, 3, multiply);  
}

