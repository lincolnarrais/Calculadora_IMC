import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

class GenderCardContent extends StatelessWidget {
  final IconData iconData;
  final String label;

  GenderCardContent({
    @required this.iconData,
    @required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FaIcon(
          iconData,
          size: 80,
        ),
        SizedBox(height: 15),
        Text(
          label,
          style: kLabelStyle,
        ),
      ],
    );
  }
}
