import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Color.fromARGB(255, 4, 0, 48)),
            child: Text(
              "i-exceed",
              style: TextStyle(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile( 
            title: Text(
              'Home',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          ListTile(
            title: Text(
              'Settings',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
