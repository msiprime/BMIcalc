import 'package:flutter/material.dart';

import '../common/widgets/reusable_card.dart';
import '../features/Calculator/widgets/calculate_gesture_detector.dart';

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
                child: Text(
                  'Your Result',
                  style: Theme.of(context).textTheme.headlineLarge,
                )),
          ),
          Flexible(
            flex: 5,
            child: ReusableCard(
              colour: Theme.of(context).colorScheme.secondary,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: Text(
                      result,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      bmi,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      resultInterpretation,
                      style: Theme.of(context).textTheme.bodyLarge,
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
