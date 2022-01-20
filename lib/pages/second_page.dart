import 'package:flutter/material.dart';
import 'package:imccalc/pages/third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x809C2CF3),
      appBar: AppBar(
        backgroundColor: const Color(0x8000E3E9),
        title: const Text('Second Screen'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {  },
                  child: const Text('Move to Another page'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
