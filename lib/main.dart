// ignore_for_file: prefer_const_constructors
import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/resultsPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(255, 13, 18, 43),
          elevation: 0,
        ),
        scaffoldBackgroundColor: Color.fromARGB(255, 13, 18, 43),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: InputPage(),
      
    );
  }
}


