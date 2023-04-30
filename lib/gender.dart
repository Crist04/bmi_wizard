import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GenderContainer extends StatelessWidget {
  GenderContainer({required this.icon,required this.genderText});
  final IconData icon;
  final String genderText;
  @override
  Widget build(BuildContext context) {
    return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Icon(
                    icon,
                    size: 80,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    genderText,
                    style: labelTextStyle,
                  )
                ]);
  }
}