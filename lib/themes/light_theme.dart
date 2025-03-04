import 'package:flutter/material.dart';
import '../utils/style.dart';

ThemeData light(BuildContext context) => ThemeData(
  cardColor: Colors.white, // Change to a light color
  sliderTheme: SliderTheme.of(context).copyWith(
    activeTrackColor: Colors.black, // Change to a darker color for light theme
    overlayColor: const Color(0x29FF4081), // Change to a lighter overlay color
    thumbColor: bottomContainerColor, // You might want to change this to a lighter color
    inactiveTrackColor: secondaryColor, // Change to a lighter color for inactive track
    thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 13.0),
    overlayShape: const RoundSliderOverlayShape(overlayRadius: 26.0),
  ),
  scaffoldBackgroundColor: Colors.white, // Change to a light background color
  primaryColor: Colors.blue, // Change to a primary color suitable for light theme
);