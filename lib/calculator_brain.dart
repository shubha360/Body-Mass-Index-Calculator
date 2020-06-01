import 'dart:math';

class CalculatorBrain {
  final int heightInInch;
  final int weightInKg;

  CalculatorBrain({this.heightInInch, this.weightInKg});

  double _bmi;

  String bmiCalculator() {
    _bmi = weightInKg / pow((heightInInch * 0.0254), 2);
    return _bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (_bmi >= 25) return 'OVERWEIGHT';
    if (_bmi > 18.5)
      return 'NORMAL';
    else
      return 'UNDERWEIGHT';
  }

  String getInterpretation() {
    if (_bmi >= 25)
      return 'Maintain a balanced calorie-controlled diet and exercise more frequently and regularly.';
    if (_bmi > 18.5)
      return 'Congratulations! You are maintaining a sound health.';
    else
      return 'Eat nutrient-rich foods more frequently and exercise daily.';
  }
}
