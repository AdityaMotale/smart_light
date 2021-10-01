import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoomeTile extends StatelessWidget {
  final double width;
  final double height;

  const RoomeTile({Key? key, required this.width, required this.height})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      width: Get.width / 2.3,
      height: Get.height / 5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Color(0x33000000),
            blurRadius: 3,
            offset: Offset(-1.50, -1.50),
          ),
          BoxShadow(
            color: Color(0x33000000),
            blurRadius: 3,
            offset: Offset(1.50, 1.50),
          ),
        ],
        color: Colors.white,
      ),
    );
  }
}
