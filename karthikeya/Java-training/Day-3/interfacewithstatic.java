interface Device 
{
    static void info() 
	{
        System.out.println("Static method from Device interface");
    }
}

class Phone implements Device 
{
    Phone() 
	{
        System.out.println("Phone constructor called");
    }
}

public class interfacewithstatic
{
    public static void main(String[] args) 
	{
        Phone myPhone = new Phone();
        Device.info();  // Static methods in interfaces are not inherited by implementing classes.
		                //That’s why you must call them using the interface name not with child class
    }
}
