

import 'package:flutter/material.dart';

Widget ButtonWidget(String label /*Function onPressed*/) {
  Container(
    width: 100,
    decoration: BoxDecoration(
      color: Colors.green,
      borderRadius: BorderRadius.circular(20),
    ),
    child: TextButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage()));
      },
      child: Text(
        'DONE',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
  ),
}