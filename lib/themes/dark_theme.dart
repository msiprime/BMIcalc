import 'package:flutter/material.dart';
import '../utils/style.dart';
ThemeData dark(BuildContext context) => ThemeData(
  cardColor: const Color(0xFF1D1E33),
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
  textTheme: TextTheme(
    bodyLarge: TextStyle(
      color: secondaryColor,
    )
  )
);