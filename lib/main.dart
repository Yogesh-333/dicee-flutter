import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.deepOrange,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftpressed,rightpressed;
  void genrator(){setState(() {
    leftpressed= Random().nextInt(6)+1;
    rightpressed= Random().nextInt(6)+1;
  });
      }
    @override
  Widget build(BuildContext context) {
         return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child:FlatButton(
              onPressed: (){
                setState(() {
                  genrator();
                });
              },
              child: Image.asset('images/dice$leftpressed.png'),
            ),
          ),
          Expanded(
            child:FlatButton(
              onPressed: (){
                setState(() {
                  genrator();
                });
              },
              child: Image.asset('images/dice$rightpressed.png'),
            ),
          ),
        ],
      ),
    );
  }
}
