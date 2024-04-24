import 'dart:math';

import 'package:flutter/material.dart';

class Rollerdice extends StatefulWidget {
  Rollerdice({super.key});

  @override
  State<Rollerdice> createState() => _RollerdiceState();
}

class _RollerdiceState extends State<Rollerdice> {
  int diceNumber = 1;
  Random ramdom = Random();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/dice-$diceNumber.png", width: 200),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
            style: TextButton.styleFrom(
                foregroundColor: Colors.amber,
                padding: EdgeInsets.only(top: 20)),
            onPressed: () {
              setState(() {
                diceNumber = ramdom.nextInt(6) + 1;
              });
            },
            child: const Text(
              "Roll dice",
              style: TextStyle(color: Colors.black),
            ))
      ],
    );
  }
}
