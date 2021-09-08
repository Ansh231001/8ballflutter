import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPlay(),
      ),
    );

class BallPlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Ask me Anything"),
        backgroundColor: Colors.blue[900],
      ),
      body: BallPage(),
    );
  }
}

class BallPage extends StatefulWidget {
  @override
  _BallPlayState createState() => _BallPlayState();
}

class _BallPlayState extends State<BallPage> {
  int random_number = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          onPressed: () {
            setState(() {
              random_number = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset("images/ball$random_number.png")),
    );
  }
}
