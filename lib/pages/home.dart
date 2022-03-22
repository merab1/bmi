import 'package:bmi/models/home_model.dart';
import 'package:bmi/pages/result_page.dart';
import 'package:flutter/material.dart';

import '../widgets/digits_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController textWeightController = TextEditingController();
  TextEditingController textHeightController = TextEditingController();

  FocusNode weightFocusNode = FocusNode();
  FocusNode heightFocusNode = FocusNode();

  // HomeModel bmiLogic = HomeModel();
  int weight = 0;
  int height = 0;

  void printDigits(int digit) {
    if(weightFocusNode.hasFocus) {
      textWeightController.text += digit.toString();
    } else if(heightFocusNode.hasFocus) {
      textHeightController.text += digit.toString();
    }
  }

/*  @override
  void initState() {
    weightFocusNode = FocusNode();
    heightFocusNode = FocusNode();
    super.initState();
  }*/

  @override
  void dispose() {
    weightFocusNode.dispose();
    heightFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              heightFactor: 7,
              child: Text(
                "LET'S CHECK IT OUT",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(50, 20, 0, 10),
              child: Text(
                'Your weight',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 50),
              width: 200,
              height: 50,
              child: TextField(
                focusNode: weightFocusNode,
                //    key: Key,
                    readOnly: true,
                // enabled: false,
                controller: textWeightController,
                keyboardType: TextInputType.number,
                maxLines: 1,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  suffixText: 'kg',
                  suffixStyle: TextStyle(
                    color: Colors.grey.shade700,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade900,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(50, 20, 0, 10),
              child: Text(
                'Your height',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 50),
                  width: 200,
                  height: 50,
                  child: TextField(
                    focusNode: heightFocusNode,
                    keyboardType: TextInputType.number,
                        readOnly: true,
                    //  enabled: false,
                    controller: textHeightController,
                    maxLines: 1,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      suffixText: 'cm',
                      suffixStyle: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade900,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                Container(
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextButton(
                    onPressed: () {
                      String controllerWeightInfo = textWeightController.text;
                      weight = int.parse(controllerWeightInfo);
                      String controllerHeightInfo = textHeightController.text;
                      height = int.parse(controllerHeightInfo);
                      textWeightController.clear();
                      textHeightController.clear();
                      HomeModel homeModel = HomeModel(
                          weight: weight,
                          height: height);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResultPage(
                                    bmiResult: homeModel.bmiResult(),
                                    advice: homeModel.advice(),
                                  )));
                    },
                    child: const Text(
                      'DONE',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Table(
              children: [
                TableRow(
                  children: [
                    digitsWidget(1, printDigits),
                    digitsWidget(2, printDigits),
                    digitsWidget(3, printDigits),
                  ],
                ),
                TableRow(children: [
                  digitsWidget(4, printDigits),
                  digitsWidget(5, printDigits),
                  digitsWidget(6, printDigits),
                ]),
                TableRow(
                  children: [
                    digitsWidget(7, printDigits),
                    digitsWidget(8, printDigits),
                    digitsWidget(9, printDigits),
                  ],
                ),
              ],
            ),
            Center(
              child: digitsWidget(0, printDigits),
            ),
          ],
        ),
      ),
    );
  }
}
