import 'package:flutter/material.dart';
import 'package:imccalc/pages/second_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFDD00),
      appBar: AppBar(
        backgroundColor: const Color(0x8000E3E9),
        title: const Text('Third Screen'),
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
