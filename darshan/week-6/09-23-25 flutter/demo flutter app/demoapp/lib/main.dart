import 'package:demoapp/components/AppBar.dart';
import 'package:demoapp/components/Body.dart';
import 'package:demoapp/components/Drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DemoContent(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 4, 0, 48),
          foregroundColor: Colors.white,
          elevation: 10,
        ),
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            color: Color.fromARGB(255, 7, 0, 63),
            fontSize: 20,
          ),
          bodyMedium: TextStyle(color: Colors.black, fontSize: 10),
          headlineLarge: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.blue),
      ),
    );
  }
}

class DemoContent extends StatelessWidget {
  const DemoContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: const CustomAppbar(),
      body: DemoBody()
    );
  }
}
