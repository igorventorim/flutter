import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[800],
            title: Text('I Am Poor'),
          ),
          body: Center(
            child: Image(
              image: AssetImage('images/i_am_poor.png'),
            ),
          ),
          backgroundColor: Colors.blue[400],
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
