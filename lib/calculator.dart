import 'dart:math';

class Calculator {
  Calculator({required this.height,required this.weight});
  final int height;
  final int weight;
  late double _bmi;
  String calculateBmi() {
    _bmi = weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResults(){
    if(_bmi >=25)
     return "You are overweight";

    else if(_bmi>18.5)
     return "You are normal";

    else
      return "underweight";
  }
  String getAdvice(){
    if(_bmi >=25)
     return "Body Weight is higher. Try to loose some weight.";

    else if(_bmi>18.5)
     return "You have a normal body weight. Good job!.";

    else
      return "You have a lower body weight. You can eat a bit more.";
  }

}