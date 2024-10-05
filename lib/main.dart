import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text("Dicee"),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int randomNumber1 = 1;
  int randomNumber2 = 1;
  int randomNumber3 = 1;
  int randomNumber4 = 1;
  int randomNumber5 = 1;
  int randomNumber6 = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Six - Of - Six",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold,
                fontSize: 48,
                fontFamily: 'Pacifico'),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () {
                    rollDice();
                  },
                  child: Image.asset('images/dice$randomNumber1.png'),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () {
                    rollDice();
                  },
                  child: Image.asset('images/dice$randomNumber2.png'),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () {
                    rollDice();
                  },
                  child: Image.asset('images/dice$randomNumber3.png'),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () {
                    rollDice();
                  },
                  child: Image.asset('images/dice$randomNumber4.png'),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () {
                    rollDice();
                  },
                  child: Image.asset("images/dice$randomNumber5.png"),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () {
                    rollDice();
                  },
                  child: Image.asset('images/dice$randomNumber6.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void rollDice() {
    setState(
      () {
        randomNumber1 = Random().nextInt(6) + 1;
        randomNumber2 = Random().nextInt(6) + 1;
        randomNumber3 = Random().nextInt(6) + 1;
        randomNumber4 = Random().nextInt(6) + 1;
        randomNumber5 = Random().nextInt(6) + 1;
        randomNumber6 = Random().nextInt(6) + 1; //(0 to 5) +1;
      },
    );
  }
}
