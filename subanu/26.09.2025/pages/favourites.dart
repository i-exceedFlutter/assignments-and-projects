import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_project/pages/cart.dart';
import 'package:my_project/pages/main.dart';
import 'package:my_project/pages/profile.dart';

void main()
{
  runApp(favourites());
}
class favourites extends StatelessWidget {
  const favourites({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(

          title: Text("Application",
            style: TextStyle(),),
          titleSpacing: 5,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          centerTitle: true,
          toolbarHeight: 60,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search),),
          ],

        ),
        body: Container(
          alignment: Alignment.topCenter,
          margin: EdgeInsets.all(20),
          child: Center(
            child: Text("Favourites",style: TextStyle(
              color: Colors.brown[900],
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
            ),
          ),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
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
        drawer: Drawer(
          backgroundColor: Colors.deepPurple[50],
          width: 250,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              children: [
                DrawerHeader(child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Icon(Icons.account_circle_outlined,
                      size: 60,
                      color: Colors.deepPurple[400],),
                    SizedBox(height: 10,),
                    Text("Subanu",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),)
                  ],

                )),
                SizedBox(height: 20,),
                ListTile(title: Text("Home",style:TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                ),textColor: Colors.black,),
                ListTile(title: Text("Account",style:TextStyle(
                    fontWeight: FontWeight.bold
                ),
                ),textColor: Colors.black,),
                ListTile(title: Text("Favourites",style:TextStyle(
                    fontWeight: FontWeight.bold
                ),
                ),textColor: Colors.black,),
                ListTile(title: Text("Cart",style:TextStyle(
                    fontWeight: FontWeight.bold
                ),
                ),textColor: Colors.black,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
