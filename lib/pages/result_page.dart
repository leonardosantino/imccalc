import 'package:flutter/material.dart';
import 'package:imccalc/widgets/card.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {Key? key,
      required this.message,
      required this.status,
      required this.imc})
      : super(key: key);

  final String message;
  final String status;
  final String imc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0x8000E3E9),
        title: const Text(
          'Result',
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'Standard',
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'View your result',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Standard',
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: MyCard(
              color: const Color(0x8000E3E9),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    status.toUpperCase(),
                    style: const TextStyle(
                      color: Color(0xFFF5A623),
                      fontSize: 30,
                      fontFamily: 'Standard',
                    ),
                  ),
                  Text(
                    imc,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      fontFamily: 'Standard',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      message,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                        fontFamily: 'Standard',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
