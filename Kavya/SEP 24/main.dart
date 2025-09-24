import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
        theme:ThemeData(primaryColor: Colors.pinkAccent, scaffoldBackgroundColor: Colors.white70),
        home: scaffoldprop(),

    );
  }
}
class scaffoldprop extends StatelessWidget {
  const scaffoldprop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Theme
        .of(context)
        .primaryColor,
      title: Text(" MY QUIZ ", style: TextStyle(fontSize: 34,color:Colors.black26,fontFamily:"Georgia",fontWeight: FontWeight.bold)),
      centerTitle: true,
      toolbarHeight: 80,
      leading: Icon(Icons.menu,size: 40, color:Colors.black26),
      actions: [Icon(Icons.search,size:40,color:Colors.black26), Icon(Icons.notifications,size:40,color:Colors.black26)]),
      body:
      Column(
        children: [
          Container(child: Text("    What is the        Capital of India?", style: TextStyle(fontSize: 38,fontStyle: FontStyle.italic,color: Colors.pink ,fontFamily:"Times New Roman" ), ),
            margin: EdgeInsets.only(top: 30, left: 30, right: 30),
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(color:Colors.white60, borderRadius: BorderRadius.circular(20)),
          alignment: Alignment.center,
          padding: EdgeInsets.only(left:27,top:0)),
          Container(child: Text("a) New Delhi", style: TextStyle(fontSize: 30,color: Colors.green,fontFamily:"Times New Roman"),),margin: EdgeInsets.only(top: 50, left: 30, right: 30),
              height: 80,
              width: double.infinity,
            decoration: BoxDecoration(color:Colors.white60,borderRadius:BorderRadius.circular(20)),
            alignment: Alignment.center,),
          Container(child: Text("b) Chennai",style: TextStyle(fontSize: 30,fontFamily:"Times New Roman")),margin: EdgeInsets.only(top: 20, left: 30, right: 30),
          height: 80,
          width: double.infinity,
          decoration: BoxDecoration(color:Colors.white60,borderRadius:BorderRadius.circular(20)),
            alignment: Alignment.center,),
          Container(child: Text("c) Mumbai",style: TextStyle(fontSize: 30,fontFamily:"Times New Roman")),margin: EdgeInsets.only(top: 20, left: 30, right: 30),
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(color:Colors.white60,borderRadius:BorderRadius.circular(20)),
            alignment: Alignment.center,),
          Container(child: Text("d) Delhi",style: TextStyle(fontSize: 30,fontFamily:"Times New Roman")),margin: EdgeInsets.only(top: 20, left: 30, right: 30),
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(color:Colors.white60,borderRadius:BorderRadius.circular(20)),
            alignment: Alignment.center,),
          Container(padding:EdgeInsets.all(30),child: Align(
            child: Icon(Icons.arrow_forward,size:40,color: Colors.black26,),
            alignment: Alignment.bottomRight,

          ))
          
        ],
        
      ),

       );
  }
}


