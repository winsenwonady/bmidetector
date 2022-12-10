import 'dart:io';

import 'package:bmi_calculator/component/bottom_button.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/component/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiResult,
      required this.resultText,
      required this.Interpretation});
  final String bmiResult;
  final String resultText;
  final String Interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                transformAlignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: KTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: reusablecard(
                colour: KActiveCardColour,
                cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        resultText,
                        style: KresultTextStyle,
                      ),
                      Text(
                        bmiResult,
                        style: KsbmtTextStyle,
                      ),
                      Text(Interpretation)
                    ]),
              ),
            ),
            BottomButton(
                ButtonTitle: 'Re-Calculate',
                onTap: () {
                  Navigator.pop(context);
                })
          ],
        ));
  }
}
