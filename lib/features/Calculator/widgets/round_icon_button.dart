import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData? icon;

  final dynamic onPressed;

  const RoundIconButton({super.key, this.onPressed, this.icon});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      onPressed: onPressed,
      shape: const CircleBorder(),
      fillColor: const Color(0xFF2A2B46),
      child: Icon(icon),
    );
  }
}
