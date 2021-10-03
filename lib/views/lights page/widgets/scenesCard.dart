import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smart_light/core/widgets/featureSnackbar.dart';

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
      child: InkWell(
        onTap: () => snackBar(),
        child: Container(
          margin: const EdgeInsets.all(8),
          width: Get.width / 2.3,
          height: Get.height / 10,
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
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                child: SvgPicture.asset(
                  'assets/surface1.svg',
                  color: Colors.white,
                ),
              ),
              Text(
                sceneName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: Get.width / 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
