import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
class IconContent extends StatelessWidget {
  final IconData fontAwesomeIcon;
  final String labelText;

  const IconContent(
      {super.key, required this.fontAwesomeIcon, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(fontAwesomeIcon, size: 80),
        const SizedBox(
          height: 18,
        ),
        Text(
          labelText,
          style: labelTextStyle,
        )
      ],
    );
  }
}
