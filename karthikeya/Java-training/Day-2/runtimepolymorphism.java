class Animal
    {
        void makeSound() 
		{ 
		System.out.println("Animal makes a sound"); 
		}
    }

    class Dog extends Animal 
	{  // method overriding takes place, arguments are  not mandatory in the method overriding
        void makeSound() 
		{
			System.out.println("Dog barks");
		}
    }

    class Cat extends Animal 
	{
        void makeSound() 
		{ 
		System.out.println("Cat meows"); 
		}
    }

class runtimepolymorphism
{
    static public void main(String asd[])
	{
            Animal myAnimal = new Dog(); 
            myAnimal.makeSound(); // Dynamic method dispatch, runtime polymorphism
			
			//Animal myAnimal = new Cat(); // Only one overrided method will be called in dynamic method dispatch
            //myAnimal.makeSound();	
        
    }
}