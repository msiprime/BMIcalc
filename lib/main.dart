import 'package:bmi_calculator/screens/second_screen.dart';
import 'package:bmi_calculator/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'constants.dart';
import 'screens/input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const SplashScreen()),
        GetPage(name: '/home-page', page: () => const InputPage()),
        GetPage(name: '/result-page', page: () => const ResultsPage(bmi: '', result: '', resultInterpretation: '',)),
      ],
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
    );
  }
}
