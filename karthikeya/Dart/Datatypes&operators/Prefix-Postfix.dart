void main() 
{
  int x = 5;

  print("Initial x: $x");

  print("Prefix ++x: ${++x}"); 
  print("After prefix, x: $x");

  print("Postfix x++: ${x++}");
  print("After postfix, x: $x");

  print("Prefix --x: ${--x}");
  print("After prefix --, x: $x");

  print("Postfix x--: ${x--}");
  print("After postfix --, x: $x");
}
