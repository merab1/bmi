import 'package:bmi/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BmiApp());
}

class BmiApp extends StatelessWidget {
  const BmiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI App',
      theme: ThemeData(scaffoldBackgroundColor: Colors.grey.shade800),
      home: const Home(),
    );
  }
}
