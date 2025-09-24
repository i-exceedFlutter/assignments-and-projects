import 'package:flutter/material.dart';

void main()
{
  runApp(appBar());
}
class appBar extends StatelessWidget {
  const appBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.brown[900],
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.pinkAccent,
      ),
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        title: Text("App bar"),
        titleSpacing: 5,
        foregroundColor: Colors.white,
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: false,
        toolbarHeight: 60,
        elevation: 10,
        shadowColor: Colors.brown[800],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite),),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag),),
          IconButton(onPressed: (){}, icon: Icon(Icons.account_circle),),
        ],
      ),
    );
  }
}