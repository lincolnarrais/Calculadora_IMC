import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'gender_card_content.dart';
import 'reusable_card.dart';
import 'round_icon_button.dart';

enum Gender {
  MALE,
  FEMALE,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 35;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CALCULADOR DE IMC'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onTap: () {
                      setState(() {
                        selectedGender == Gender.MALE
                            ? selectedGender = null
                            : selectedGender = Gender.MALE;
                      });
                    },
                    color: selectedGender == Gender.MALE
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    child: GenderCardContent(
                      iconData: FontAwesomeIcons.mars,
                      label: 'HOMEM',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onTap: () {
                      setState(() {
                        selectedGender == Gender.FEMALE
                            ? selectedGender = null
                            : selectedGender = Gender.FEMALE;
                      });
                    },
                    color: selectedGender == Gender.FEMALE
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    child: GenderCardContent(
                      iconData: FontAwesomeIcons.venus,
                      label: 'MULHER',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'ALTURA',
                    style: kLabelStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbColor: kBottomContainerColor,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 14),
                      overlayColor: Color(0x29EB1555),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 24),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      onChanged: (double newVaue) {
                        setState(() {
                          height = newVaue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'PESO',
                          style: kLabelStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              weight.toString(),
                              style: kNumberStyle,
                            ),
                            Text(
                              'kg',
                              style: kLabelStyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  if (weight > 0) {
                                    weight--;
                                  }
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            SizedBox(width: 10),
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  if (weight < 600) {
                                    weight++;
                                  }
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'IDADE',
                          style: kLabelStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              age.toString(),
                              style: kNumberStyle,
                            ),
                            Text(
                              age > 1 ? ' anos' : ' ano',
                              style: kLabelStyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  if (age > 0) {
                                    age--;
                                  }
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            SizedBox(width: 10),
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  if (age < 130) {
                                    age++;
                                  }
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            height: kBottomContainerHeight,
            width: double.infinity,
            color: kBottomContainerColor,
            child: Center(
              child: Text(
                'CALCULAR',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
