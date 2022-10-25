import 'package:flutter/material.dart';
import '../screen/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme:
            AppBarTheme(backgroundColor: Color(0xFF0F0F1E), centerTitle: true),
        scaffoldBackgroundColor: Color(0xFF0F0F1E),
      ),
      home: InputPage(),
    );
  }
}
