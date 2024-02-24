import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
              titleTextStyle:
                  const TextStyle(color: Colors.white, fontSize: 40),
              centerTitle: true,
              title: const Text(
                'Dicee',
              ),
              backgroundColor: Colors.green),
          body: const DicePage(),
        ),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int _diceenumber1 = 1;
  int _diceenumber2 = 1;
  var x = Random();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Image.asset(
              'images/dice$_diceenumber1.png',
            ),
          ),
          Expanded(
            child: Image.asset(
              'images/dice$_diceenumber2.png',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _diceenumber1 = x.nextInt(6) + 1;
                _diceenumber2 = x.nextInt(6) + 1;
              });
            },
            child: const Text('play'),
          )
        ],
      ),
    );
  }
}
