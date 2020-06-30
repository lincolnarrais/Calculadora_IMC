import 'dart:math';

import 'package:flutter/foundation.dart';

class CalculatorBrain {
  int height;
  int weight;

  CalculatorBrain({
    @required this.height,
    @required this.weight,
  });

  double get _bmi {
    return weight / pow(height / 100, 2);
  }

  String getBMI() {
    return _bmi % 1 == 0 ? _bmi.toStringAsFixed(0) : _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'ACIMA DO PESO';
    } else if (_bmi >= 18.5) {
      return 'NORMAL';
    } else {
      return 'ABAIXO DO PESO';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Você está um pouco acima do seu peso ideal. Pratique mais exercícios físicos.';
    } else if (_bmi >= 18.5) {
      return 'Você está no seu peso ideal. Parabéns! Continue assim!';
    } else {
      return 'Você está um pouco abaixo do seu peso ideal. Está se alimentando bem?';
    }
  }
}
