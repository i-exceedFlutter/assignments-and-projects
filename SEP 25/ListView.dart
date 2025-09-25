import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(myList());
}
class myList extends StatelessWidget {
  const myList({super.key});

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
      backgroundColor: Color.fromRGBO(230, 220, 255,1),
      appBar: AppBar(title: Text("TRAINEES",style: TextStyle(fontSize: 34,fontFamily: "Times New Roman"),),toolbarHeight: 100,centerTitle: true,backgroundColor: Colors.deepPurple,foregroundColor: Colors.white70,),
      body:Center(
        child: SizedBox(
          height: 550,
          child: ListView( //List View is scrollable
            scrollDirection: Axis.vertical,
           physics: BouncingScrollPhysics(),
           padding: EdgeInsets.all(20),
           //reverse: true, - false by default
          // itemExtent: 150, - sets all the containers' height to 150
              prototypeItem: const SizedBox( //give a prototype(overall size or working model) for the containers in the ListView
                height: 150, //sets all the containers' height to 150, Cannot use prototypeItem if itemExtent is used as both will try to set height.
              ),
           children: [Container(height: 80, width: double.infinity, color: Color.fromRGBO(255, 102, 102,1),child: Text("Kavya S", style: TextStyle(fontSize: 30,fontFamily: "Monospace"),),alignment: Alignment.center,margin: EdgeInsets.only(top:10),),
             Container(height: 120, width: double.infinity,color: Color.fromRGBO(255, 178, 102,1),child: Text("Subanu B", style: TextStyle(fontSize: 30,fontFamily: "Monospace"),),alignment: Alignment.center,margin: EdgeInsets.only(top:10),),
             Container(height: 100, width: double.infinity,color: Color.fromRGBO(255, 255, 153,1),child: Text("Chandini L", style: TextStyle(fontSize: 30,fontFamily: "Monospace"),),alignment: Alignment.center,margin: EdgeInsets.only(top:10),),
             Container(height: 50, width: double.infinity,color: Color.fromRGBO(153, 255, 153,1),child: Text("Darshan", style: TextStyle(fontSize: 30,fontFamily: "Monospace"),),alignment: Alignment.center,margin: EdgeInsets.only(top:10),),
             Container(height: 50, width: double.infinity,color: Color.fromRGBO(102, 178, 255,1),child: Text("Bhargavi", style: TextStyle(fontSize: 30,fontFamily: "Monospace"),),alignment: Alignment.center,margin: EdgeInsets.only(top:10),),
             Container(height: 80, width: double.infinity,color: Color.fromRGBO(255, 255, 153,1),child: Text("Tarunika", style: TextStyle(fontSize: 30,fontFamily: "Monospace"),),alignment: Alignment.center,margin: EdgeInsets.only(top:10),),
             Container(height: 90, width: double.infinity,color: Color.fromRGBO(255, 102, 102,1),child: Text("Roshan", style: TextStyle(fontSize: 30,fontFamily: "Monospace"),),alignment: Alignment.center,margin: EdgeInsets.only(top:10),),
             Container(height: 100, width: double.infinity,color: Color.fromRGBO(255, 153, 255,1),child: Text("Karthikeyan", style: TextStyle(fontSize: 30,fontFamily: "Monospace"),),alignment: Alignment.center,margin: EdgeInsets.only(top:10),)]
          ),
        ),
      )
    );
  }
}
