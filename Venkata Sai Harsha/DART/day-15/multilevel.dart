class Library {
  String? libraryName;

  Library(String? libraryName){
    this.libraryName=libraryName;
  }

  void showLibrary() {
    print("Library Name: $libraryName");
  }
}

class Book extends Library {
  String? title;

  Book(String? libraryName, String? title) : super(libraryName){
    this.title=title;
  }

  void showBook() {
    super.showLibrary();
    print("Book Title: $title");
  }
}

class Reader extends Book {
  String? readerName;

  Reader({String? libraryName, String? title, String? readerName})
      : super(libraryName, title){
        this.readerName=readerName;
      }

  void showReader() {
    super.showBook();
    print("Reader Name: $readerName");
  }
}

void main() {
  Reader r1 = Reader(
    libraryName: "City Central Library",
    title: "Dart Programming",
    readerName: "Harsha",
  );

  r1.showReader();

  print("\n--- Example with missing parameters ---");
  Reader r2 = Reader(); // no parameters passed
  r2.showReader();
}
