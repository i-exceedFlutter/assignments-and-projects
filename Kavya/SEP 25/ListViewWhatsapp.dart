import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'data.dart';

void main()
{
  runApp(whatsapp());
}
class whatsapp extends StatelessWidget {
  const whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color.fromRGBO(37, 211, 130, 1)),
      home: scaffold(),
    );
  }
}
class scaffold extends StatelessWidget {
  const scaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(backgroundColor: Colors.white70,
          child: ListView(children: [ListTile(title: Text("Chats")),
              ListTile(title: Text("Groups"),),
            ListTile(title: Text("Calls"),)
      ],)),
      appBar: AppBar(backgroundColor: Color.fromRGBO(37, 211, 130, 1),
        toolbarHeight: 70,
       // leading:Icon(Icons.menu,size: 28,color: Colors.black45,),
        actions:[Icon(Icons.search,size: 28,color: Colors.black45),
          SizedBox(width: 20,),
          Icon(Icons.camera_alt_outlined,size: 28,color: Colors.black45),
          SizedBox(width: 20,),
          Icon(Icons.more_vert,size: 28,color: Colors.black45),
          SizedBox(width: 10,)],
        title: Text("WhatsApp",
          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black45,
            fontSize: 25,),),),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: DataList.length,
          itemBuilder: (BuildContext context,int i)
        {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(leading:CircleAvatar(backgroundColor:Colors.grey[300],
              child: Text("${DataList[i].text}",
                style: TextStyle(color:Colors.black),)),
            tileColor:Colors.white70,title:Text("${DataList[i].name}",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            subtitle:Text("${DataList[i].message}",
              style: TextStyle(fontSize: 15,fontFamily: "San Francisco"),),
            trailing: Text("${DataList[i].time}",
              style: TextStyle(fontSize: 13),),

          ),
        );
      }),
    );
  }
}
