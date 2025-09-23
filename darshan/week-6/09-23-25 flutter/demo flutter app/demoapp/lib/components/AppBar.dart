import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("App bar Demo",style:TextStyle(fontWeight: FontWeight.bold)),
      actions: [
        
        IconButton(
          icon: const Icon(Icons.account_box),
          onPressed: () {
            print('Profile button clicked.');
          },
        ),
        IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {
            print('Notification button clicked.');
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
