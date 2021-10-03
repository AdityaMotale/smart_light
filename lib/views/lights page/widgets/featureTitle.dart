import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget featureTitle(String title) => Container(
      padding: const EdgeInsets.only(
        left: 20,
        top: 20,
      ),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: TextStyle(
          color: Color(0xFF022D62),
          fontSize: Get.width / 15,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
