import 'package:flutter/material.dart';

class ColorCircle extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function onTap;

  ColorCircle({
    required this.child,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap,
      child: Container(
        margin: const EdgeInsets.all(5),
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: child,
      ),
    );
  }
}
