import 'package:flutter/material.dart';

import '../constants.dart';
import '../components/large_pink_bottom_button.dart';
import '../components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  const ResultsPage({
    @required this.bmiResult,
    @required this.resultText,
    @required this.interpretation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CALCULADORA DE IMC'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Seu Resultado',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText,
                    style: kResultTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        bmiResult,
                        style: kBMITextStyle,
                      ),
                      Text(
                        'kg/m²',
                        style: kLabelStyle,
                      ),
                    ],
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: LargePinkBottomButton(
              onPressed: () {
                Navigator.pop(context);
              },
              label: 'RECALCULAR',
            ),
          ),
        ],
      ),
    );
  }
}
