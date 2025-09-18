class product
{

    int quantity;
    float price;

    // Parameterized constructor
    product(int quantity, float price)
    {
       this.quantity = quantity;
       this.price = price;
    }

    public void calculate()
    {
       System.out.println("The total price of the product is : "+(quantity*price));
    }
}

class parameterizedconstructor
{
   public static void main(String args[])
   {
      product p = new product(3, 65);
      p.calculate();
   }
}