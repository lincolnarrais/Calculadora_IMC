import 'package:flutter/material.dart';

const Color cardDefaultColor = Color(0xFF1D1E33);

class ReusableCard extends StatelessWidget {
  final Color color;
  final child;

  ReusableCard({
    this.color = cardDefaultColor,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
