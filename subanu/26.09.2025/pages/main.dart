import 'package:flutter/material.dart';
import 'package:my_project/appBar.dart';
import 'package:my_project/pages/cart.dart';
import 'package:my_project/pages/profile.dart';

import 'favourites.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        brightness: Brightness.light,
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
          IconButton(onPressed: (){
          }, icon: Icon(Icons.search),),
  ],

),

    body:ListView(
      children: [
        Container(
          width: double.infinity,
          height: 250,
          margin: EdgeInsets.only(left: 40,right: 40,top: 40),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.deepPurple[100],
          ),
        ),
        SizedBox(height: 30,),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 50),
              width: 90,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(width: 1,color: Colors.black)
              ),
              child: Center(child: Text("Tile 1")),
            ),
            SizedBox(width: 20,),
            Container(
              width: 90,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(width: 1,color: Colors.black)
              ),
              child: Center(child: Text("Tile 2")),
            ),
            SizedBox(width: 20,),
            Container(
              width: 90,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(width: 1,color: Colors.black)
              ),
              child: Center(child: Text("Tile 3")),
            ),
          ],
        ),

        Row(
          children: [
            Container(
              width: 130,
                height: 130,
              margin: EdgeInsets.only(left: 50,top: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue[100],
              ),
            ),
            SizedBox(width: 50,),
            Container(
              width: 130,
              height: 130,
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red[100],
              ),
            ),
          ],
        ),
        SizedBox(height: 30,),
        Row(
          children: [
            Container(
              width: 130,
              height: 130,
              margin: EdgeInsets.only(left: 50,top: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.deepPurple[100],
              ),
            ),
            SizedBox(width: 50,),
            Container(
              width: 130,
              height: 130,
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue[100],
              ),
            ),
          ],
        )
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>cart()));
              }, icon: Icon(Icons.shopping_cart,color: Colors.white,)),
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));
              }, icon: Icon(Icons.account_circle,color: Colors.white,))

            ],

          ),
        ),
      ),

      drawer: Drawer(
        backgroundColor: Colors.white,
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
    );
  }
}


//-------------------------------------------------------------------------

// class Home extends StatelessWidget {
//   const Home({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: App(),
//       debugShowCheckedModeBanner: false,
//     theme: ThemeData(
//       primaryColor: Colors.deepPurple
//     ),
//
//     );
//   }
// }
// class App extends StatelessWidget {
//   const App({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("App bar"),
//         centerTitle:true,
//         backgroundColor: Theme.of(context).primaryColor,
//         foregroundColor: Colors.black,
//         //leading: Icon(Icons.menu),
//       ),
//       backgroundColor: Colors.deepPurple[50],
//       drawer: Drawer(
//         backgroundColor: Colors.deepPurple[20],
//         width: 250,
//         shadowColor: Colors.deepPurple,
//         elevation: 50,
//         child: ListView(
//           children: [
//             DrawerHeader(decoration: BoxDecoration(
//               gradient: LinearGradient(colors: [Colors.pinkAccent,Colors.deepPurple]),
//             ),
//                 padding: EdgeInsets.only(top: 20),
//                 margin: EdgeInsets.all(5),
//                 child: Image(image: NetworkImage('https://www.i-exceed.com/wp-content/uploads/2022/08/i-exceed-Hi-Res-copy-1.png'))),
//             ListTile(title: Text("Home"),),
//             ListTile(title: Text("About"),),
//             ListTile(title: Text("Contact"),)
//           ],
//         ),
//       ),
//       //body: Center(child: ElevatedButton(onPressed: (){}, child: Text("submit"))),
//       body: Builder(builder: (context)=> Center(
//         child: ElevatedButton(onPressed: (){
//           Scaffold.of(context).openDrawer();
//         }, child: Text("submit")),
//       )),
//
//     );
//   }
// }
//
