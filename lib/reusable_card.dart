import 'package:flutter/material.dart';

const Color cardDefaultColor = Color(0xFF1D1E33);

class ReusableCard extends StatelessWidget {
  final Color color;
  final child;
  final Function onTap;

  ReusableCard({
    this.color = cardDefaultColor,
    this.child,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: child,
      ),
    );
  }
}
