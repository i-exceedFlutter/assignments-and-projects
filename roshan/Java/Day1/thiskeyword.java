class local {

  int x;  // Class variable x

// Constructor with one parameter x

  local(int x) { 
    this.x = x; // refers to the class variable x
  }
}

class thiskeyword{
  public static void main(String[] args) {
    // Create an object of local and pass the value 5 to the constructor

    local myObj = new local(5);
    System.out.println("Value of x = " + myObj.x);
  }
}