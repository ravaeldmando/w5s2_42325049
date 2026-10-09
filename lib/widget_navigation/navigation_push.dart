import 'package:flutter/material.dart';
import 'navigation_pop.dart';

class NavigationPush extends StatefulWidget {
  const NavigationPush({super.key});

  @override
  State<NavigationPush> createState() => _NavigationPushState();
}

class _NavigationPushState extends State<NavigationPush> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Push"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0), // padding 10 piksel di keempat sisi Container agar isi tidak menempel ke tepi layar
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const NavigationPop();
                }));
              },
              child: const Text('go to next Page'),
            ),
          ],
        ),
      ),
    );
  }
}
