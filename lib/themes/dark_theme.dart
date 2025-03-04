import 'package:flutter/material.dart';
ThemeData dark(BuildContext context) => ThemeData(
  cardColor: const Color(0xFFA4A6EC),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: Color(0xFF1D1E33),
    secondary: Color(0xFF505382),
  ),
  sliderTheme: SliderTheme.of(context).copyWith(
    activeTrackColor: Colors.white,
    overlayColor: const Color(0x29eb1555),
    thumbColor: const Color(0xFFEB1555),
    inactiveTrackColor: const Color(0xFF8D8E98),
    thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 13.0),
    overlayShape: const RoundSliderOverlayShape(overlayRadius: 26.0),
  ),
  scaffoldBackgroundColor: const Color(0xFF151323),
  primaryColor: Colors.black,
);