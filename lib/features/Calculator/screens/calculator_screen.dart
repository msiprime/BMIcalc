import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../common/BmiController.dart';
import '../../../common/widgets/reusable_card.dart';
import '../../../screens/second_screen.dart';
import '../../../utils/style.dart';
import '../widgets/calculate_gesture_detector.dart';
import '../widgets/icon_content.dart';
import '../widgets/round_icon_button.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Bmicontroller controller = Get.find<Bmicontroller>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
        backgroundColor: Theme.of(context).cardColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            child: Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: Obx(() => ReusableCard(
                        press: () => controller.updateGender(Gender.male),
                        colour: controller.selectedGender.value == Gender.male
                            ? Theme.of(context).colorScheme.secondary
                            : Theme.of(context).colorScheme.primary,
                        cardChild: const IconContent(
                          fontAwesomeIcon: FontAwesomeIcons.mars,
                          labelText: 'MALE',
                        ),
                      )),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Obx(() => ReusableCard(
                        press: () => controller.updateGender(Gender.female),
                        colour: controller.selectedGender.value == Gender.female
                            ? Theme.of(context).colorScheme.secondary
                            : Theme.of(context).colorScheme.primary,
                        cardChild: const IconContent(
                          fontAwesomeIcon: FontAwesomeIcons.venus,
                          labelText: 'FEMALE',
                        ),
                      )),
                ),
              ],
            ),
          ),
          Flexible(
            child: Obx(() => ReusableCard(
                  colour: Theme.of(context).cardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('HEIGHT',
                          style: Theme.of(context).textTheme.labelLarge),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                              controller.currentHeight.value.toInt().toString(),
                              style: Theme.of(context).textTheme.headlineLarge),
                          Text('cm',
                              style: Theme.of(context).textTheme.labelLarge),
                        ],
                      ),
                      Slider(
                        value: controller.currentHeight.value,
                        min: 120.0,
                        max: 220.0,
                        divisions: 100,
                        label: '${controller.currentHeight.value.floor()} cm',
                        onChanged: (value) => controller.updateHeight(value),
                      ),
                    ],
                  ),
                )),
          ),
          Flexible(
            child: Row(
              children: [
                Flexible(
                  child: Obx(() => ReusableCard(
                        colour: Theme.of(context).cardColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('WEIGHT',
                                style: Theme.of(context).textTheme.labelLarge),
                            Text(controller.currentWeight.value.toString(),
                                style:
                                    Theme.of(context).textTheme.headlineLarge),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                RoundIconButton(
                                  onPressed: controller.decrementWeight,
                                  icon: FontAwesomeIcons.minus,
                                ),
                                RoundIconButton(
                                  onPressed: controller.incrementWeight,
                                  icon: FontAwesomeIcons.plus,
                                ),
                              ],
                            )
                          ],
                        ),
                      )),
                ),
                Flexible(
                  child: Obx(() => ReusableCard(
                        colour: Theme.of(context).cardColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('AGE',
                                style: Theme.of(context).textTheme.labelLarge),
                            Text(controller.currentAge.value.toString(),
                                style:
                                    Theme.of(context).textTheme.headlineLarge),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                RoundIconButton(
                                  onPressed: controller.decrementAge,
                                  icon: FontAwesomeIcons.minus,
                                ),
                                RoundIconButton(
                                  onPressed: controller.incrementAge,
                                  icon: FontAwesomeIcons.plus,
                                ),
                              ],
                            )
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
          BottomButton(
            onTap: () {
              controller.calculateBMI();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    bmi: controller.bmi.value,
                    result: controller.result.value,
                    resultInterpretation: controller.interpretation.value,
                  ),
                ),
              );
            },
            gestureText: 'CALCULATE',
          ),
        ],
      ),
    );
  }
}
