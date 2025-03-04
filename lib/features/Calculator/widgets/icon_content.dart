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
        Icon(fontAwesomeIcon, size: 80,color: Theme.of(context).cardColor,),
        const SizedBox(
          height: 18,
        ),
        Text(
          labelText,
          style: Theme.of(context).textTheme.labelLarge,
        )
      ],
    );
  }
}
