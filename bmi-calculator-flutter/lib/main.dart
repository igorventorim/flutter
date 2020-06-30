import 'package:flutter/material.dart';
import 'package:bmi_calculator/views/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CALCULADORA IMC',
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xff0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}
