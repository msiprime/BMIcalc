import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

import '../components/calculate_gesture_detector.dart';

class ResultsPage extends StatelessWidget {
  final String bmi;
  final String result;
  final String resultInterpretation;

  const ResultsPage({
    super.key,
    required this.bmi,
    required this.result,
    required this.resultInterpretation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
        backgroundColor: const Color(0xFF0F1126),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: const Text('Your Result', style: numberTextStyle),
            ),
          ),
          Flexible(
            flex: 5,
            child: ReusableCard(
              colour: activeCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: Text(
                      result,
                      style: resultTextStyle,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      bmi,
                      style: kBMITextStyle,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      resultInterpretation,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            child: BottomButton(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/',
                );
              },
              gestureText: 'RE-CALCULATE',
            ),
          )
        ],
      ),
    );
  }
}
