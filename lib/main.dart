import 'package:bmi_calculator/common/BmiController.dart';
import 'package:bmi_calculator/features/Calculator/screens/calculator_screen.dart';
import 'package:bmi_calculator/screens/second_screen.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {'/': (context) =>  const ResultsPage(bmi: 'ok', result: '', resultInterpretation: '',)},
      theme: ThemeData.dark().copyWith(
        sliderTheme: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.white,
          overlayColor: const Color(0x29eb1555),
          thumbColor: bottomContainerColor,
          inactiveTrackColor: secondaryColor,
          thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 13.0),
          overlayShape: const RoundSliderOverlayShape(overlayRadius: 26.0),
        ),
        scaffoldBackgroundColor: const Color(0xFF151323),
        primaryColor: Colors.black,
      ),
      home:  CalculatorScreen(),
    );
  }
}
