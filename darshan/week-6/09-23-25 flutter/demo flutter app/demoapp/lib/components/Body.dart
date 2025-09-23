import 'package:flutter/material.dart';

class DemoBody extends StatelessWidget {
  const DemoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Builder(
              builder: (innerContext) {
                return ElevatedButton(
                  onPressed: () {
                    Scaffold.of(innerContext).openDrawer();
                  },

                  child: const Text(
                    "Open drawer",
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                );
              },
            ),
            Container(
              margin: EdgeInsets.all(15),

              height: 100,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 206, 208, 192),
                borderRadius: BorderRadius.circular(20),
              ),

              width: double.infinity,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "More features comming soon...",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
