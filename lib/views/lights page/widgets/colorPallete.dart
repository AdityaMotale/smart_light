import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorCircle extends StatelessWidget {
  final Color color;
  final Widget child;
  final VoidCallback onTap;

  ColorCircle({
    required this.child,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.all(5),
          width: Get.width / 10,
          height: Get.width / 10,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(25),
          ),
          child: child,
        ),
      ),
    );
  }
}
