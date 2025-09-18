class address
{ 
    String st,city;
    int pin;
    address(String st,String city,int pin)
	{
	   this.st=st;
	   this.city=city;
	   this.pin=pin;
	}
    public void displayAddress()
	{
	  System.out.println("Street name="+st);
	  System.out.println("City="+city);
	  System.out.println("Pincode="+pin);
	}
}