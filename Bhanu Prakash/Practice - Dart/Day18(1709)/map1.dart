void main()
{
  
Set<String> city={"Salem","Bengaluru","Kurnool","Kochi"};
Map.fromIterable(city);
// print(Map.fromIterable(city,key:(i)=>i,value:(i)=>i.startsWith("S")?"Tamilnadu" : i.startsWith("C") ? "Tamilnadu" :"Karnataka"));
 
// Set<String> state={"Tamilnadu","Karnataka","Andhra","Kerala"};
 
// print(Map.fromIterables(state, city));
 
 
print(Map.fromIterable(city,
   key :(i)=>i,
   value:(i)=> i.startsWith('S')? "TamilNadu"
            :i.startsWith('C') ?"TamilNadu"
            :"Karnataka"));
}
 