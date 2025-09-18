class Animal 
{
	// method overloading takes place and arguments are mandatory for method in method overloading

    void typeofanimal(String animalType, String name) {
        System.out.println(animalType + " Animal" + name + "is dangerous.");
    }

    void typeofanimal(String name) {
        System.out.println("Pet Animal" + name + " is friendly.");
    }

    void typeofanimal(String name, boolean isAmphibian) {
        if (isAmphibian) {
            System.out.println("Amphibian" + name + "' lives on both land and water.");
        } else {
            System.out.println(name + " is not an amphibian.");
        }
    }
}

class compiletimepolymorphism 
{
    public static void main(String asd[])
	{
        Animal anim = new Animal();

        anim.typeofanimal("Wild", "Lion");      
        anim.typeofanimal("Dog");                
        anim.typeofanimal("Frog", true);           
    }
}
