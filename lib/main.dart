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
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDnum=1;
  var rightDnum=1;
  @override

  Widget build(BuildContext context) {
    var random = new Random();

    return Center(
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: TextButton(
                onPressed: (){
                  setState(() {
                    leftDnum = random.nextInt(6) + 1;
                  });

                  print(leftDnum);
                } ,
                child: Image.asset('images/dice$leftDnum.png'),),
            ),
            Expanded(
              child: TextButton(
                onPressed: (){
                  setState(() {
                    rightDnum = random.nextInt(6) + 1;
                  });

                },
                child: Image.asset('images/dice$rightDnum.png'),),
            ),
          ],
        ),
      ),
    );
  }
  }

