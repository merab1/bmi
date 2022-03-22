import 'package:bmi/models/home_model.dart';
import 'package:bmi/pages/result_page.dart';
import 'package:flutter/cupertino.dart';
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

  // HomeModel bmiLogic = HomeModel();
  int weight = 0;
  int height = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
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
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 20, 0, 10),
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
              padding: EdgeInsets.only(left: 50),
              width: 200,
              height: 50,
              child: TextField(
                //    key: Key,
                //    readOnly: true,
                // enabled: false,

                controller: textWeightController,
                keyboardType: TextInputType.number,
                maxLines: 1,
                style: TextStyle(
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
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 20, 0, 10),
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
                  padding: EdgeInsets.only(left: 50),
                  width: 200,
                  height: 50,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    //    readOnly: true,
                    //  enabled: false,
                    controller: textHeightController,
                    maxLines: 1,
                    style: TextStyle(
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
                SizedBox(
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
                    child: Text(
                      'DONE',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Table(
              children: [
                TableRow(
                  children: [
                    digitsWidget(1),
                    digitsWidget(2),
                    digitsWidget(3),
                  ],
                ),
                TableRow(children: [
                  digitsWidget(4),
                  digitsWidget(5),
                  digitsWidget(6),
                ]),
                TableRow(
                  children: [
                    digitsWidget(7),
                    digitsWidget(8),
                    digitsWidget(9),
                  ],
                ),
              ],
            ),
            Center(
              child: digitsWidget(0),
            ),
          ],
        ),
      ),
    );
  }
}
