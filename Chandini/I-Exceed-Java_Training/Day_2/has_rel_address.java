class has_rel_address
{
   String street, city;
   int pin;
   has_rel_address(String street, String city, int pin)
   {
      this.street = street;
      this.city = city;
      this.pin = pin;
   }
   public void displayaddress()
   {
     System.out.println("Street name : "+street);
     System.out.println("City name : "+city);
     System.out.println("Pincode : "+pin);
   }
}