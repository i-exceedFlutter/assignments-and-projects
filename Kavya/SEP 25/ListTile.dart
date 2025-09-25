import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyListTile());
}
class MyListTile extends StatelessWidget {
  const MyListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: scaffoldprop()
    );
  }
}
class scaffoldprop extends StatelessWidget {
  const scaffoldprop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CONTACTS"),toolbarHeight: 80,backgroundColor: Colors.grey,),
      body:
      ListView(children:[SizedBox(height: 10,), ListTile(onTap:(){print("Calling...");},
            enabled:true,
        hoverColor: Colors.white38,
            leading:CircleAvatar(child: Text("K")),
            title: Text("Kavya", style: TextStyle(fontSize: 20,color:Colors.black),),
            subtitle: Text("6382861324"),
            trailing: Icon(Icons.call),
            tileColor: Color.fromRGBO(235, 235, 235,1),
            horizontalTitleGap: 30,
            minVerticalPadding: 20,
            //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            iconColor: Color.fromRGBO(256, 256, 256, 1),
            textColor: Colors.black87,),
        SizedBox(height: 10,),
        ListTile(onTap:(){print("Calling...");},
            enabled:true,
            leading:CircleAvatar(child: Text("R")),
            title: Text("Radha", style: TextStyle(fontSize: 20,color:Colors.black),),
            subtitle: Text("9750999472"),
            trailing: Icon(Icons.call),
            tileColor: Color.fromRGBO(235, 235, 235,1),
            horizontalTitleGap: 30,
            minVerticalPadding: 20,
           // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            iconColor: Color.fromRGBO(256, 256, 256, 1),
            textColor: Colors.black87,),
        SizedBox(height: 10,),
        ListTile(onTap:(){print("Calling...");},
            enabled:true,
            leading:CircleAvatar(child: Text("S")),
            title: Text("Sriram", style: TextStyle(fontSize: 20,color:Colors.black),),
            subtitle: Text("8765578222"),
            trailing: Icon(Icons.call),
            tileColor: Color.fromRGBO(235, 235, 235,1),
            horizontalTitleGap: 30,
            minVerticalPadding: 20,
           // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            iconColor: Color.fromRGBO(256, 256, 256, 1),
            textColor: Colors.black87,),
        SizedBox(height: 10,),
        ListTile(onTap:(){print("Calling...");},
            enabled:true,
            leading:CircleAvatar(child: Text("M")),
            title: Text("Manoj", style: TextStyle(fontSize: 20,color:Colors.black),),
            subtitle: Text("7336382768"),
            trailing: Icon(Icons.call),
            tileColor: Color.fromRGBO(235, 235, 235,1),
            horizontalTitleGap: 30,
            minVerticalPadding: 20,
           // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            iconColor: Color.fromRGBO(256, 256, 256, 1),
            textColor: Colors.black87,),
        SizedBox(height: 10,),
        ListTile(onTap:(){print("Calling...");},
            enabled:true,
            leading:CircleAvatar(child: Text("S")),
            title: Text("Suresh", style: TextStyle(fontSize: 20,color:Colors.black),),
            subtitle: Text("9878366331"),
            trailing: Icon(Icons.call),
            tileColor: Color.fromRGBO(235, 235, 235,1),
            horizontalTitleGap: 30,
            minVerticalPadding: 20,
           // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            iconColor: Color.fromRGBO(256, 256, 256, 1),
            textColor: Colors.black87,),
        SizedBox(height: 10,),
        ListTile(onTap:(){print("Calling...");},
            enabled:true,
            leading:CircleAvatar(child: Text("R")),
            title: Text("Raja", style: TextStyle(fontSize: 20,color:Colors.black),),
            subtitle: Text("7626221737"),
            trailing: Icon(Icons.call),
            tileColor: Color.fromRGBO(235, 235, 235,1),
            horizontalTitleGap: 30,
            minVerticalPadding: 20,
           // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            iconColor: Color.fromRGBO(256, 256, 256, 1),
            textColor: Colors.black87,),
        SizedBox(height: 10,),
        ListTile(onTap:(){print("Calling...");},
            enabled:true,
            leading:CircleAvatar(child: Text("J")),
            title: Text("Janani", style: TextStyle(fontSize: 20,color:Colors.black),),
            subtitle: Text("7237217211"),
            trailing: Icon(Icons.call),
            tileColor: Color.fromRGBO(235, 235, 235,1),
            horizontalTitleGap: 30,
            minVerticalPadding: 20,
           // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            iconColor: Color.fromRGBO(256, 256, 256, 1),
            textColor: Colors.black87,),
        SizedBox(height: 10,),
        ListTile(onTap:(){print("Calling...");},
            enabled:true,
            leading:CircleAvatar(child: Text("S",style: TextStyle(color: Colors.black),)),
            title: Text("Thatha", style: TextStyle(fontSize: 20),),
            subtitle: Text("7777788899"),
            trailing: Icon(Icons.call),
            tileColor: Color.fromRGBO(235, 235, 235,1),
            horizontalTitleGap: 30,
            minVerticalPadding: 20,
          //  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            iconColor: Color.fromRGBO(256, 256, 256, 1),
            textColor: Colors.black87,)]));


  }
}
