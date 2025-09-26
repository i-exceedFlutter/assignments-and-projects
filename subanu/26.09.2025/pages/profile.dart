import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_project/pages/cart.dart';
import 'package:my_project/pages/login.dart';
import 'package:my_project/pages/profList.dart';

import 'favourites.dart';
import 'main.dart';

void main()
{
  runApp(profile());
}
class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Icon(Icons.account_circle_outlined,size: 100,),
                ),
                Center(child: Text("Subanu",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),))
              ],
            ),
            SizedBox(height: 20,),
            Expanded(
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (BuildContext c,int i){
                  return getMyWidget(c,i);
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black,
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
                }, icon: Icon(Icons.home,color: Colors.white,)),
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> favourites()));
                }, icon: Icon(Icons.favorite,color: Colors.white,)),
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> cart()));
                }, icon: Icon(Icons.shopping_cart,color: Colors.white,)),
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> profile()));
                }, icon: Icon(Icons.account_circle,color: Colors.white,))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
Widget getMyWidget(BuildContext c,int i)
{
  return Container(
    margin: EdgeInsets.only(left: 30,right: 30,bottom: 10),
    height: 60,
    padding: EdgeInsets.only(left: 10,right: 10,top: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.deepPurple[100],
    ),
    child: ListTile(
      title: Text(list[i].comp,),
      onTap: (){
        Navigator.push(c, MaterialPageRoute(builder: (c)=>list[i].goTo));
      },
    ),
  );
}
