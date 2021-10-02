import 'package:flutter/material.dart';

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
          fontSize: 25,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
