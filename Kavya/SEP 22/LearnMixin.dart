abstract class Student {
  void name();
}

mixin addAge on Student {
  void age() {
    print("21");
  }
}
mixin addCity {
  void city() {
    print("Salem");
  }
}

class Teacher  with addCity implements Student {
  void name() {
    print("Kavya");
  }

  void subject() {
    print("Mathematics");
  }
}

void main() {
  
}
