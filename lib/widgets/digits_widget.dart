import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget digitsWidget(int digit, Function buttonPressed) {

return TextButton(
  onPressed: () {
    buttonPressed(digit);
  },
  child: Text(
    '$digit',
    style: TextStyle(
color: Colors.white,
      fontSize: 30,
    ),
  ),
);
}