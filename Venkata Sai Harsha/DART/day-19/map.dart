void main(){
  Map<String, int> marks = {"Alice": 90, "Bob": 85, "Charlie": 92};

  for (var key in marks.keys) {
    print("Key: $key, Value: ${marks[key]}");
  }

  for(dynamic i=0;i<marks.entries.toList().length;i++){
    print("${marks.entries.toList()[i].key} -> ${marks.entries.toList()[i].value}");
  }

  marks.forEach((key,value)=>print("$key -> $value"));
}