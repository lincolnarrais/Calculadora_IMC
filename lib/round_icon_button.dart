import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  RoundIconButton({
    @required this.icon,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      elevation: 0,
      constraints: BoxConstraints.tightFor(
        height: 46,
        width: 46,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4D4F5E),
    );
  }
}
