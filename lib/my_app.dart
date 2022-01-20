import 'package:flutter/material.dart';
import 'package:imccalc/pages/one_page.dart';
import 'package:imccalc/pages/second_page.dart';
import 'package:imccalc/pages/third_page.dart';

import 'pages/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      routes: {
        '/second-page': (context) {
          return const SecondPage();
        },
        '/third-page': (context) {
          return const ThirdPage();
        }
      },
    );
  }
}
