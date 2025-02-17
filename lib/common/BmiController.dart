import 'dart:math';
import 'package:get/get.dart';

enum Gender { male, female }

class Bmicontroller extends GetxController {
  var selectedGender = Gender.male.obs;
  var currentHeight = 170.0.obs;
  var currentWeight = 60.obs;
  var currentAge = 20.obs;
  var bmi = ''.obs;
  var result = ''.obs;
  var interpretation = ''.obs;

  void updateGender(Gender gender) {
    selectedGender.value = gender;
  }

  void updateHeight(double height) {
    currentHeight.value = height;
  }

  void incrementWeight() {
    currentWeight.value++;
  }

  void decrementWeight() {
    if (currentWeight > 1) currentWeight.value--;
  }

  void incrementAge() {
    currentAge.value++;
  }

  void decrementAge() {
    if (currentAge > 1) currentAge.value--;
  }

  void calculateBMI() {
    double heightInMeters = currentHeight.value / 100;
    double bmiValue = currentWeight.value / pow(heightInMeters, 2);
    bmi.value = bmiValue.toStringAsFixed(1);

    if (bmiValue < 18.5) {
      result.value = 'UNDERWEIGHT';
      interpretation.value = 'You have a lower than normal body weight. You can eat a bit more.';
    } else if (bmiValue < 25.0) {
      result.value = 'NORMAL WEIGHT';
      interpretation.value = 'You have a normal body weight. Good job!';
    } else if (bmiValue < 30.0) {
      result.value = 'OVERWEIGHT';
      interpretation.value = 'You have a higher than normal body weight. Try to exercise more.';
    } else {
      result.value = 'OBESE';
      interpretation.value = 'You have a much higher than normal body weight. Consider making lifestyle changes.';
    }
  }
}
