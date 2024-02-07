import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'icon_content.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  InputPageState createState() => InputPageState();
}

class InputPageState extends State<InputPage> {
  Gender? selectedGender;
  double _currentHeight = 120.0;
  double _currentWeight = 40.0;

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
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    press: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? activeCardColor
                        : inActiveCardColor,
                    cardChild: const IconContent(
                      fontAwesomeIcon: FontAwesomeIcons.mars,
                      labelText: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    press: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? activeCardColor
                        : inActiveCardColor,
                    cardChild: const IconContent(
                      fontAwesomeIcon: FontAwesomeIcons.venus,
                      labelText: 'FEMALE',
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT',
                    style: labelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(_currentHeight.toInt().toString(),
                          style: numberTextStyle),
                      const Text('cm', style: labelTextStyle),
                    ],
                  ),
                  Slider(
                    value: _currentHeight,
                    min: 120.0,
                    max: 220.0,
                    divisions: 100,
                    label: '${_currentHeight.floor()} cm',
                    onChanged: (double value) {
                      setState(() {
                        _currentHeight = value;
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'WEIGHT',
                          style: labelTextStyle,
                        ),
                        Text(
                          _currentWeight.toInt().toString(),
                          style: numberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  _currentWeight--;
                                });
                              },
                              backgroundColor: Color(0xFF2A2B46),
                              child: Icon(Icons.remove),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  _currentWeight++;
                                });
                              },
                              backgroundColor: Color(0xFF2A2B46),
                              child: Icon(Icons.add),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(colour: activeCardColor),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            height: bottomContainerHeight,
            width: double.infinity,
            color: bottomContainerColor,
          )
        ],
      ),
    );
  }
}
//Color(0xFF2A2B46)
