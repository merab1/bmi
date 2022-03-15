import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
TextEditingController textEditingController = TextEditingController();

Widget digitsWidget(int digit) {
return TextButton(
  onPressed: () {
    textEditingController = digit as TextEditingController;
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