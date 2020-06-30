import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BallPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue[900],
      ),
      body: Ball(),
      backgroundColor: Colors.blue,
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.blue[900],
        child: Icon(Icons.add_alert),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 3;

  void setNumber() {
    ballNumber = Random().nextInt(5) + 1;
    print('I got clicked!');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
            onPressed: () {
              setState(() {
                setNumber();
              });
            },
            child: Image.asset('images/ball$ballNumber.png')),
      ),
    );
  }
}
