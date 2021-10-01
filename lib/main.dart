import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_light/views/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Smart Light',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
