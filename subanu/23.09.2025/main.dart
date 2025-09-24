import 'package:flutter/material.dart';

void main()
{
  runApp(Home());
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: App(),
      debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.deepPurple
    ),

    );
  }
}
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App bar"),
        centerTitle:true,
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.black,
        //leading: Icon(Icons.menu),
      ),
      backgroundColor: Colors.deepPurple[50],
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[20],
        width: 250,
        shadowColor: Colors.deepPurple,
        elevation: 50,
        child: ListView(
          children: [
            DrawerHeader(decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.pinkAccent,Colors.deepPurple]),
            ),
                padding: EdgeInsets.only(top: 20),
                margin: EdgeInsets.all(5),
                child: Image(image: NetworkImage('https://www.i-exceed.com/wp-content/uploads/2022/08/i-exceed-Hi-Res-copy-1.png'))),
            ListTile(title: Text("Home"),),
            ListTile(title: Text("About"),),
            ListTile(title: Text("Contact"),)
          ],
        ),
      ),
      //body: Center(child: ElevatedButton(onPressed: (){}, child: Text("submit"))),
      body: Builder(builder: (context)=> Center(
        child: ElevatedButton(onPressed: (){
          Scaffold.of(context).openDrawer();
        }, child: Text("submit")),
      )),
      
    );
  }
}

