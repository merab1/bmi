import 'package:flutter/material.dart';

Widget digitsWidget(int digit, Function buttonPressed) {

return TextButton(
  onPressed: () {
    buttonPressed(digit);
  },
  child: Text(
    '$digit',
    style: const TextStyle(
color: Colors.white,
      fontSize: 30,
    ),
  ),
);
}