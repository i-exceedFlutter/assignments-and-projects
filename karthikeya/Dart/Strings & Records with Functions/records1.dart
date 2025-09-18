main() 
{
  var data = (name:"Syamkarthikeya", project:"L&D", company:"iexceed", yoe:1, isWorking:true);
  //print(data.runtimeType);
  //print(data.$1); // if the given record is unnamed, then we must use .$1, .$2 like this(access by position).
  //print(data.$2);
  //print(data.$3);
  //print(data.$4);
  //print(data.$5);
  
  print(data.runtimeType);
  print(data.name);
  print(data.project);
  print(data.company);
  print(data.yoe);
  print(data.isWorking);
}
 
//A record is a fixed-size, immutable collection of values, which can be either:
 
//Unnamed (accessed by position), or
 
//Named (accessed by name).
 
// They are similar to tuples in other languages like Python, Swift, or Kotlin.
 
//In Dart, a record is an anonymous, immutable, aggregate type that allows for
//the bundling of multiple objects into a single, cohesive entity. It provides a lightweight and efficient way to group related data without the overhead of defining a full-fledged class.
 
//Anonymous:
// Records do not have a specific name, unlike classes. They are defined inline, often used for one-time data structures or as a convenient alternative to simple classes.
 
//Immutable:
//Once a record is created and its fields are set, their values cannot be changed. This immutability ensures a consistent state and promotes safer, more predictable code.
 
//Aggregate Type:
//Records group multiple values, potentially of different types (heterogeneous), into a single unit. This allows for treating the bundled data as a whole, simplifying data manipulation and passing multiple values to or from functions.
 
//Fixed Size:
//The number of fields in a record is determined at the time of its creation and cannot be changed later.
 
//Typed:
//Each field within a record has a specific type, and Dart's type system ensures type safety.
 