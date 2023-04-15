import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.blue[200],
    appBar: AppBar(
      title: const Text('Ask Me Anything'),
      backgroundColor: Colors.blue[700],
    ),
    body: MagicBall(),
  ),
  ),
  );
}
class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
      onPressed: (){
        setState(() {
          number=Random().nextInt(5) +1;
        });
      },
          child: (Image.asset('images/ball$number.png')

          ),
          ),
          ),


        ],
      ),
    );
  }
}
