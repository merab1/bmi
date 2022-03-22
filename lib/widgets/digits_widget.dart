import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget digitsWidget(int digit, /*Function callBack*/) {
  final buttonPressed;
return TextButton(
  onPressed: () {
   // textEditingController = digit as TextEditingController;
//callBack('$digit');
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