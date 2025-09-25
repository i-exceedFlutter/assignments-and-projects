import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(listView());
}
class listView extends StatelessWidget {
  const listView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.blueAccent,)),
        title: Text("AppBar",style: TextStyle(color: Colors.blueAccent),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.blueAccent,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.account_circle,color: Colors.blueAccent,))
        ],
      ),
      backgroundColor: Colors.black,
      body: SizedBox(
        height: 250,
        child: ListView(
          scrollDirection: Axis.horizontal,
          reverse: false,
          padding: EdgeInsets.all(20),
          physics: BouncingScrollPhysics(),
          //itemExtent: 200,
          prototypeItem: const SizedBox(height: 260,width: 260,),
          children: [
            Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.blueAccent[100],
              ),
              child: Center(child: Text("Container 1")),
            ),
            Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.blueAccent[100],
              ),
              child: Center(child: Text("Container 2")),
            ),
            Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.blueAccent[100],
              ),
              child: Center(child: Text("Container 3")),
            ),
            Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.blueAccent[100],
              ),
              child: Center(child: Text("Container 4")),
            ),
            Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.blueAccent[100],
              ),
              child: Center(child: Text("Container 5")),
            ),
          ],
        ),
      ),
    ),);
  }
}
