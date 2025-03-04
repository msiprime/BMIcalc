import 'dart:developer';

import 'package:bmi_calculator/screens/second_screen.dart';
import 'package:bmi_calculator/screens/splash_screen.dart';
import 'package:bmi_calculator/common/BmiController.dart';
import 'package:bmi_calculator/features/Calculator/screens/calculator_screen.dart';
import 'package:bmi_calculator/themes/dark_theme.dart';
import 'package:bmi_calculator/themes/light_theme.dart';
import 'package:bmi_calculator/utils/style.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';



void main(){
  Get.put(Bmicontroller());
  runApp(BMICalculator());
}
class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const SplashScreen()),
        GetPage(name: '/home-page', page: () => const CalculatorScreen()),
        GetPage(name: '/result-page', page: () => const ResultsPage(bmi: '', result: '', resultInterpretation: '',)),
      ],
      debugShowCheckedModeBanner: false,
      theme: light(context),
      darkTheme: dark(context),
      themeMode: ThemeMode.system,
    );
  }
}
