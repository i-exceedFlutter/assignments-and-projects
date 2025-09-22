mixin Mixin {
  void hello() {
    print("Hello, This is Mixin");
  }
}
mixin Mixin2 on Mixin {
  void hello() {
    print("Hello, This is Mixin2");
  }
}

class Main with Mixin, Mixin2 {} //must have both the mixins,
// Mixin alone can be there, but Mixin2 alone cannot be there

void main() {
  Main().hello(); //Mixin2 will be printed.
}
