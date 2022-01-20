import 'package:flutter/material.dart';
import 'package:imccalc/components/card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imccalc/components/my_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color colorM = const Color(0x8000E3E9);
  Color colorF = const Color(0x8000E3E9);
  int wight = 50;
  int age = 18;
  int height = 120;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      // appBar: AppBar(
      //   backgroundColor: const Color(0x8000E3E9),
      //   title: const Text('App Imc'),
      // ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        if (colorM.value == 0x8000E3E9) {
                          colorM = const Color(0x809C2CF3);
                          colorF = const Color(0x8000E3E9);
                        } else {
                          colorM = const Color(0x8000E3E9);
                        }
                        setState(() {});
                      },
                      child: MyCard(
                        color: colorM,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Icon(
                              FontAwesomeIcons.mars,
                              size: 95,
                              color: Color(0xFF9C2CF3),
                            ),
                            Text(
                              'Male',
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        if (colorF.value == 0x8000E3E9) {
                          colorF = const Color(0x80FB49C0);
                          colorM = const Color(0x8000E3E9);
                        } else {
                          colorF = const Color(0x8000E3E9);
                        }
                        setState(() {});
                      },
                      child: MyCard(
                        color: colorF,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Icon(
                              FontAwesomeIcons.venus,
                              size: 95,
                              color: Color(0xFFFB49C0),
                            ),
                            Text(
                              'Female',
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyCard(
                      color: const Color(0x8000E3E9),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'Height',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            '$height cm',
                            style: const TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Slider(
                            activeColor: const Color(0xBEF5A623),
                            value: height.toDouble(),
                            onChanged: (double value) {
                              height = value.toInt();
                              setState(() {});
                            },
                            min: 20,
                            max: 220,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyCard(
                      color: const Color(0x8000E3E9),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'Wight',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            '$wight',
                            style: const TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MyButton(
                                onPress: () {
                                  wight--;
                                  setState(() {});
                                },
                                child: Icons.remove,
                              ),
                              MyButton(
                                onPress: () {
                                  wight++;
                                  setState(() {});
                                },
                                child: Icons.add,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyCard(
                      color: const Color(0x8000E3E9),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'Age',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            '$age',
                            style: const TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MyButton(
                                onPress: () {
                                  age--;
                                  setState(() {});
                                },
                                child: Icons.remove,
                              ),
                              MyButton(
                                onPress: () {
                                  age++;
                                  setState(() {});
                                },
                                child: Icons.add,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    margin:
                        const EdgeInsets.only(left: 15, right: 15, bottom: 5),
                    decoration: BoxDecoration(
                      color: const Color(0xBEF5A623),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Calculate'),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
