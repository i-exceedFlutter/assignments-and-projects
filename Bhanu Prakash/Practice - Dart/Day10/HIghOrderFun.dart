int operate(int x, int y, int Function(int, int) op) {
  return op(x, y);
}

void main() {

  print(operate(5, 3, (x, y) => (x + y)));
  print(operate(2,3,(x,y)=>(x*y)));
}