import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
   const MyCard({Key? key, this.child, this.color}) : super(key: key);

  final Widget? child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
// 0x805a9b95 transparent