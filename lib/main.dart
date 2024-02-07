import 'package:flutter/material.dart';

import 'constants.dart';
import 'input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: const InputPage(),
    );
  }
}
