import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'gender_card_content.dart';
import 'reusable_card.dart';

enum Gender {
  MALE,
  FEMALE,
}

const Color activeCardColor = Color(0xFF1D1E33);
const Color inactiveCardColor = Color(0xFF111328);
const double bottomContainerHeight = 80;
const Color bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  Gender selectedGender;

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.MALE;
                      });
                    },
                    child: ReusableCard(
                      color: selectedGender == Gender.MALE
                          ? maleCardColor = activeCardColor
                          : maleCardColor = inactiveCardColor,
                      child: GenderCardContent(
                        iconData: FontAwesomeIcons.mars,
                        label: 'HOMEM',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.FEMALE;
                      });
                    },
                    child: ReusableCard(
                      color: selectedGender == Gender.FEMALE
                          ? femaleCardColor = activeCardColor
                          : femaleCardColor = inactiveCardColor,
                      child: GenderCardContent(
                        iconData: FontAwesomeIcons.venus,
                        label: 'MULHER',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(),
                ),
                Expanded(
                  child: ReusableCard(),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            height: bottomContainerHeight,
            width: double.infinity,
            color: bottomContainerColor,
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
