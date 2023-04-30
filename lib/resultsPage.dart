import 'package:bmi_calculator/bottomButton.dart';
import 'package:bmi_calculator/color.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({required this.bmiResults,required this.advice,required this.result});
  final String bmiResults;
  final String advice;
  final String result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            child: Text(
              'Results',
              style: titleTextStyle,
              textAlign: TextAlign.center,
            ),
          )),
          Expanded(
              flex: 5,
              child: ContainerClass(
                colour: cardColor,
                cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        result.toUpperCase(),
                        style: resultTextStyle,
                      ),
                      Text(
                        bmiResults,
                        style: bmiTextStyle,
                      ),
                      Text(
                        advice,
                        style: suggestionTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ]),
              )),
          BottomButton(
            buttonTitle: 'RECALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
