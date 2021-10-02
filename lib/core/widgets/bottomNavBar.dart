import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:smart_light/core/widgets/featureSnackbar.dart';
import 'package:smart_light/views/home%20page/HomePage.dart';
import 'package:smart_light/views/lights%20page/LightsPage.dart';

Widget bottomNavBar() => Expanded(
      child: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 1,
            offset: Offset(
              0,
              -5,
            ),
          ),
        ]),
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              child: Container(
                child: SvgPicture.asset('assets/bulb.svg'),
              ),
              onTap: () => Get.to(() => LightPage(), arguments: {
                'lights': '2 Lights',
                'room': '\nBalcony',
              }),
            ),
            GestureDetector(
              onTap: () => Get.to(
                () => HomePage(),
              ),
              child: Container(
                child: SvgPicture.asset('assets/feather-home.svg'),
              ),
            ),
            GestureDetector(
              onTap: () => snackBar(),
              child: Container(
                child: SvgPicture.asset('assets/feather-settings.svg'),
              ),
            ),
          ],
        ),
      ),
    );
