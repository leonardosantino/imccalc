import 'package:flutter/material.dart';
import 'package:imccalc/pages/result_page.dart';
import 'package:imccalc/widgets/calculator_imc.dart';
import 'package:imccalc/widgets/card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imccalc/widgets/my_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color colorM = const Color(0x8000E3E9);
  Color colorF = const Color(0x8000E3E9);
  int weight = 50;
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
                              style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'Standard',
                              ),
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
                              style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'Standard',
                              ),
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
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Standard',
                            ),
                          ),
                          Text(
                            '$height cm',
                            style: const TextStyle(
                                fontSize: 30,
                                fontFamily: 'Standard',
                                fontWeight: FontWeight.bold),
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
                            'Weight',
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Standard',
                            ),
                          ),
                          Text(
                            '$weight',
                            style: const TextStyle(
                                fontSize: 30,
                                fontFamily: 'Standard',
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MyButton(
                                onPress: () {
                                  weight--;
                                  setState(() {});
                                },
                                child: Icons.remove,
                              ),
                              MyButton(
                                onPress: () {
                                  weight++;
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
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Standard',
                            ),
                          ),
                          Text(
                            '$age',
                            style: const TextStyle(
                                fontSize: 30,
                                fontFamily: 'Standard',
                                fontWeight: FontWeight.bold),
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
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xBEF5A623)),
                      onPressed: () {
                        Calculator calculator = Calculator(height, weight);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ResultPage(
                                    message: calculator.message(),
                                    status: calculator.status(),
                                    imc: calculator.calculate().toStringAsFixed(1))));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Calculate',
                            style:
                                TextStyle(fontFamily: 'Standard', fontSize: 30),
                          ),
                        ],
                      ),
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
