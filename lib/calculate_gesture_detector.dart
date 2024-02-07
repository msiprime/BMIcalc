import 'package:flutter/material.dart';

import 'constants.dart';

class BottomButton extends StatelessWidget {
  final dynamic onTap;
  final String gestureText;

  const BottomButton({
    super.key,
    this.onTap,
    required this.gestureText,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,

        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 10),
          height: bottomContainerHeight,
          width: double.infinity,
          color: bottomContainerColor,
          child: Text(
            gestureText,
            style: kLargeTextStyle,
          ),
        ));
  }
}
