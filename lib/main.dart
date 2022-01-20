import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int max = 6;
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              //flex: 1,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    print('Left button pressed');
                    leftDiceNumber = new Random().nextInt(max) + 1;
                    print('Left is now $leftDiceNumber');
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                ),
              ),
            ),
            SizedBox(
              width: 10,
              height: 80,
              child: VerticalDivider(
                color: Colors.red[200],
              ),
            ),
            Expanded(
              //flex: 2,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    print('Right button pressed');
                    rightDiceNumber = new Random().nextInt(max) + 1;
                    print('Right is now $rightDiceNumber');
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
