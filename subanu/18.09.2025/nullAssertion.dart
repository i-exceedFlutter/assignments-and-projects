class Student {
  String? name;
  Student() {
    // print(name!); --->it causes runtime crash
    if (name != null) {
      print(name!);
    } else {
      print("null");
    }
  }
}

void main() {
  Student();
}
