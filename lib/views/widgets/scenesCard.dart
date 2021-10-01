import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ScenesCard extends StatelessWidget {
  final String sceneName;
  final Color initColor;
  final Color finalColor;

  ScenesCard({
    required this.sceneName,
    required this.initColor,
    required this.finalColor,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: Get.width / 2.5,
      height: Get.height / 12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            initColor,
            finalColor,
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(),
          ),
          SvgPicture.asset(
            'assets/surface1.svg',
            color: Colors.white,
          ),
          Expanded(
            child: Container(),
          ),
          Text(
            sceneName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}
