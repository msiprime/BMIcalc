import 'dart:math';

class CalculatorBrain {
  final double height;
  final double weight;
  late double _bmi;

  CalculatorBrain({required this.height, required this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi < 18.5) {
      return ('UNDERWEIGHT');
    } else if (_bmi < 25.0) {
      return ('NORMAL_WEIGHT');
    } else if (_bmi < 30.0) {
      return ('OVERWEIGHT');
    } else {
      return ('OBESE');
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
