import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'App.dart';

void main()
{
  runApp(elevatedButton());
}
class elevatedButton extends StatelessWidget {
  const elevatedButton({super.key});

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
      appBar: AppBar(backgroundColor: Colors.pink,toolbarHeight: 78,centerTitle:true,title: Text("ACCOUNT",style: TextStyle(color:Colors.white,fontSize: 32),),),
      backgroundColor: Color.fromRGBO(255, 192, 203, 1),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 60,),
            Container(height: 100,
                width:double.infinity,
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(bottom: 50),
                child: Text("Sign Up",style: TextStyle(fontSize: 40,color: Colors.pink),)
            ),
            TextFormField(decoration: InputDecoration(hintText: "User ID: ",hintStyle:TextStyle(fontSize: 18,fontFamily: "Montserrat",color: Colors.pink[300]),border:OutlineInputBorder(),contentPadding:EdgeInsets.all(20)),),
            SizedBox(height: 20,),
            TextFormField(decoration: InputDecoration(hintText: "Password:",hintStyle:TextStyle(fontSize: 18,fontFamily: "Montserrat",color: Colors.pink[300]),border:OutlineInputBorder(),contentPadding:EdgeInsets.all(20)),),
            SizedBox(height: 50,),
            Text("Forgot your Password?",style: TextStyle( color: Colors.blue[800],fontSize: 15),),
            SizedBox(height: 10,),
            // ElevatedButton(child: Text("Sign in"),style:ElevatedButton.styleFrom(
            //   backgroundColor:  Color.fromRGBO(255, 215, 203, 1),
            //   minimumSize: Size(80,40),),
            // ),
             //ElevatedButton(onPressed: (){}, child: Text("Sign in"),style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.white54)),
              ElevatedButton(onPressed: (){Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyAppView()));}, child: Text("Sign in",style: TextStyle(color:Colors.pink[300],fontSize: 18),),style: ButtonStyle(backgroundColor:MaterialStateProperty.resolveWith<Color>((states)
             {
               if(states.contains(MaterialState.pressed))
                 {
                   return Colors.white10;
                 }
               else if(states.contains(MaterialState.hovered))
                 {
                   return Colors.white54;
                 }
               return Colors.white;
             }),
            )
            )
          ],
        ),
      ),
    );
  }
}
