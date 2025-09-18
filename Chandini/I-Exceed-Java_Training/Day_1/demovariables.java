class book
{
  String title, author;
  double price;

  book(String title, String author, double price)
    {
      this.title = title;
      this.author = author;
      this.price = price;
    }

   public void displaybook()
   {
     System.out.println("Title : "+title);
     System.out.println("Author : "+author);
     System.out.println("Price : "+price);
   }
}

class demovariables
{
  public static void main(String args[])
  {
    book b1 = new book("Java Basics","James",434.50);
    book b2 = new book("Python Guide","Martin",552.75);
    b1.displaybook();
    b2.displaybook();
  }
}