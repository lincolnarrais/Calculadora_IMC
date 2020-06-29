import 'package:flutter/material.dart';

import '../constants.dart';

class LargePinkBottomButton extends StatelessWidget {
  final Function onPressed;
  final String label;

  const LargePinkBottomButton({
    @required this.onPressed,
    @required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.only(bottom: 15),
        height: kLargeButtonHeight,
        width: double.infinity,
        color: kLargeButtonColor,
        child: Center(
          child: Text(
            label,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
