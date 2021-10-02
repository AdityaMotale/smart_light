import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smart_light/core/widgets/featureSnackbar.dart';

class LightSwitches extends StatelessWidget {
  final String img;
  final String switchName;
  final Color color;
  final Color textColor;

  LightSwitches({
    required this.img,
    required this.color,
    required this.switchName,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () => snackBar(),
        child: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15),
          ),
          width: Get.width / 2.8,
          // height: Get.height / 11,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(img),
              SizedBox(
                width: 5,
              ),
              Text(
                switchName,
                style: TextStyle(
                    color: textColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
