import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DicePage> {
  int leftDicenumber = 1;
  int rightDicenumber = 1;
  void chageDiceface() {
    rightDicenumber = Random().nextInt(6) + 1;
    leftDicenumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  chageDiceface();
                });
              },
              child: Image.asset('images/dice$leftDicenumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  chageDiceface();
                });
              },
              child: Image.asset('images/dice$rightDicenumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
