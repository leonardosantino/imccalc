import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00FF22),
      appBar: AppBar(
        backgroundColor: const Color(0x80D200E9),
        title: const Text('One Screen'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {Navigator.pushNamed(context, '/second-page');},
                  child: const Text('Move to page Two'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                  onPressed: () {Navigator.pushNamed(context, '/third-page');},
                  child: const Text('Move to page Three'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
