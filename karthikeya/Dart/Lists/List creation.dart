main()
{
  List<String> l1=["Green","orange","Blue","Yellow"]; //growable list
  l1.add("Indigo");
  print(l1);
  
  print(l1[3]);
  
  //iteration using different methods
  
  for(var i=0;i<l1.length;i++)
  {
    if(l1[i]=="Blue")
    {
      print(l1[i]);
    }
  }
  
  for(var i in l1)
  {
    if(i=="Indigo")
    {
      print(i);
    }
  }
  
  l1.forEach((i)=>print(i));
  
  List<String> l2=["Violet",...l1,"Purple"]; //spread operator
  print(l2);
  
  List<int> l3=List.filled(5,12); //fixed list
  print(l3);
  
  List<String> l4=List.filled(4,"Helloo",growable:true);
  l4.add("Syam");
  l4.add("How are you?");
  print(l4);

}