import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_project/pages/favourites.dart';
import 'package:my_project/pages/main.dart';
import 'package:my_project/pages/signUp.dart';

void main()
{
  runApp(login());
}
class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 200,bottom: 70),
              child: Center(
                child: Text("Login",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                  ),),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right:40,left: 40),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.only(right:40,left: 40),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              height: 50,
                width: 50,
                margin: EdgeInsets.only(left: 90,right: 90,top: 20),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
                },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[100]
                  ),
                  child: Text("Login",style: TextStyle(
                  color: Colors.black
                ),),
                )
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>signUp()));
              },
              child: Container(
                child: Center(child: Text("Don't have an account? Sign Up")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
