import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/style.dart';

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
        Icon(fontAwesomeIcon, size: 80,color: !Get.isDarkMode?Colors.white:Colors.black,),
        const SizedBox(
          height: 18,
        ),
        Text(
          labelText,
          style: TextStyle(color: Get.isDarkMode?Colors.white:Colors.black, fontSize: 18),
        )
      ],
    );
  }
}
