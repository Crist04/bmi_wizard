// ignore_for_file: prefer_const_constructors
import 'package:bmi_calculator/bottomButton.dart';
import 'package:bmi_calculator/calculator.dart';
import 'package:bmi_calculator/color.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/container.dart';
import 'package:bmi_calculator/gender.dart';
import 'package:bmi_calculator/gender_type.dart';
import 'package:bmi_calculator/resultsPage.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType? selectedGender;
  int height = 180;
  int weight = 55;
  int age = 12;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
            child: Row(
          children: [
            Expanded(
              child: ContainerClass(
                onPress: () {
                  setState(() {
                    selectedGender = GenderType.MALE;
                  });
                },
                colour: selectedGender == GenderType.MALE
                    ? activeCardColor
                    : inactiveCardColor,
                cardChild:
                    GenderContainer(icon: Icons.male, genderText: 'MALE'),
              ),
            ),
            Expanded(
              child: ContainerClass(
                  onPress: () {
                    setState(() {
                      selectedGender = GenderType.FEMALE;
                    });
                  },
                  colour: selectedGender == GenderType.FEMALE
                      ? activeCardColor
                      : inactiveCardColor,
                  cardChild: GenderContainer(
                      icon: Icons.female, genderText: 'FEMALE')),
            )
          ],
        )),
        Expanded(
          child: ContainerClass(
            colour: cardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HEIGHT',
                  style: labelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: weightedTextStyle,
                    ),
                    Text(
                      'cm',
                      style: labelTextStyle,
                    )
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbColor: buttonColor,
                    activeTrackColor: Color.fromARGB(255, 111, 109, 109),
                    inactiveTrackColor: Color.fromARGB(255, 111, 109, 109),
                    thumbShape: RoundSliderThumbShape(
                      enabledThumbRadius: 15.0,
                    ),
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120,
                    max: 220,
                    onChanged: (value) {
                      setState(() {
                        height = value.toInt();
                      });
                    },
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
            child: Row(
          children: [
            Expanded(
              child: ContainerClass(
                colour: cardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Weight',
                      style: labelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          weight.toString(),
                          style: weightedTextStyle,
                        ),
                        Text(
                          'kg',
                          style: labelTextStyle,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          heroTag: 'btn1',
                          backgroundColor: fabColor,
                          onPressed: () {
                            setState(() {
                              weight = weight - 1;
                            });
                          },
                          child: Icon(Icons.minimize, color: iconColor),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        FloatingActionButton(
                          heroTag: 'btn2',
                          backgroundColor: fabColor,
                          onPressed: () {
                            setState(() {
                              weight = weight + 1;
                            });
                          },
                          child: Icon(
                            Icons.add,
                            color: iconColor,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ContainerClass(
                colour: cardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Age',
                      style: labelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          age.toString(),
                          style: weightedTextStyle,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          heroTag: 'btn3',
                          backgroundColor: fabColor,
                          onPressed: () {
                            setState(() {
                              age = age - 1;
                            });
                          },
                          child: Icon(Icons.minimize, color: iconColor),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        FloatingActionButton(
                          heroTag: 'btn4',
                          backgroundColor: fabColor,
                          onPressed: () {
                            setState(() {
                              age = age + 1;
                            });
                          },
                          child: Icon(
                            Icons.add,
                            color: iconColor,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        )),
        BottomButton(
            onTap: () {
              Calculator calc = Calculator(height: height, weight: weight);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultsPage(bmiResults: calc.calculateBmi(), advice: calc.getAdvice(), result: calc.getResults())));
            },
            buttonTitle: 'CALCULATE')
      ]),
    );
  }
}
