interface Animal {
    void makeSound();  // abstract method
    void eat();
}
class Dog implements Animal {
    public void makeSound() {
        System.out.println("Bark");
    }

    public void eat() {
        System.out.println("Dog eats bones");
    }
}
class examp1
{
 public static void main(String args[])
 {
  Dog d=new Dog();
  d.makeSound();
  d.eat();
 }
}