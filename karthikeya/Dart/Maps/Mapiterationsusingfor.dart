void main() {
  Map<String, dynamic> student = {
    "Name": "Syam",
    "Age": 21,
    "College": "Amrita",
    "Course": "Electronics",
  };

  print(student);

  print(" Iteration Method 1: forEach()");
  student.forEach((key, value) {
    print("$key : $value");
  });

  print(" Iteration Method 2: for-in loop with entries");
  for (var entry in student.entries) {
    print("${entry.key} : ${entry.value}");
  }

  print(" Iteration Method 3: index with toList()");
  for (var i = 0; i < student.entries.toList().length; i++) {
    print(
      "${student.entries.toList()[i].key} : ${student.entries.toList()[i].value}",
    );
  }
}
