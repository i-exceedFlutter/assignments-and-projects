import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
    body:
      Container(
        width: double.infinity,
        height: 250,
        margin: EdgeInsets.only(left: 40,right: 40,top: 40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.brown[50],
        ),
        //transform: Matrix4.rotationZ(0.1),
        child: Align(
          alignment: Alignment.center,
          child: Image(
              image: NetworkImage('https://www.i-exceed.com/wp-content/uploads/2022/08/i-exceed-Hi-Res-copy-1.png'),
              height: 100,
              width: 100,
          ),
        )
        ),

      drawer: Drawer(
        backgroundColor: Colors.brown[50],
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(50),
              child: Image(
                height: 100,
                width: 200,
                image: NetworkImage('https://www.i-exceed.com/wp-content/uploads/2022/08/i-exceed-Hi-Res-copy-1.png'),
              ),
            ),
            ListTile(title: Text("Home"),textColor: Colors.brown[900],),
            ListTile(title: Text("Account"),textColor: Colors.brown[900],),
            ListTile(title: Text("Favourites"),textColor: Colors.brown[900],),
            ListTile(title: Text("Cart"),textColor: Colors.brown[900],),
          ],
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
