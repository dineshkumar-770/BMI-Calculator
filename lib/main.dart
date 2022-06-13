import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 251, 251, 251), 
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xFF202225)),
        textTheme: TextTheme(bodyText1: TextStyle(color: Colors.black)),
      ),
      home: InputPage(),
    );
  }
}


