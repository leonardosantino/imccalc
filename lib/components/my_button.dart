import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key, this.child, this.onPress}) : super(key: key);

  final IconData? child;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(width: 30, height: 30),
      shape: const CircleBorder(),
      fillColor: const Color(0xffffffff),
      child: Icon(child, color: const Color(0xBEF5A623),),
      onPressed: onPress,
    );
  }
}
