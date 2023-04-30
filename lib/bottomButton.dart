import 'package:bmi_calculator/color.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.buttonTitle});
  final Function()? onTap;
  final String buttonTitle;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: buttonColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: containerHeight,
        child: Center(
            child: Text(
          buttonTitle,
          style: calculateTextStyle,
        )),
      ),
    );
  }
}