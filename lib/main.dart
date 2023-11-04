// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );



class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue,
          ),
          body: Container(color: Colors.lightBlue, child: Ball())),
    );
  }
}



class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 0;
  void change() {
    ballNumber = Random().nextInt(5) + 1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Image.asset('images/ball$ballNumber.png'),
        onPressed: () {
          setState(() {
            change();
          });
        },
      ),
    );
  }
}
