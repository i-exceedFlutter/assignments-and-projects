import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(listViewBuilder());
}
class listViewBuilder extends StatelessWidget {
  const listViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(
            child: Text("List View Builder",style: TextStyle(
              color: Colors.white,
            ),),
          ),
        ),
        body: ListView.builder(
          itemCount: 20,
            physics: BouncingScrollPhysics(),
            itemBuilder: (BuildContext context,int index){
              return myWidget(index);
            }
      ),
     ),
    );
  }
}
Widget myWidget(int index)
{
  return Container(
      height: 100,
      width: 50,
      margin: EdgeInsets.only(top: 20,right: 15,left: 15),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.tealAccent[100],
          borderRadius: BorderRadius.circular(20)
      ),
      child: ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Person$index"),
            subtitle: Text("Hey everyone"),
            subtitleTextStyle: TextStyle(color: Colors.black),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz)),
          )
  );
}
