import 'package:flutter/material.dart';
import 'package:get/get.dart';

snackBar() => Get.snackbar(
      'Sorry :(',
      'The feature is being added!',
      colorText: Colors.black,
      icon: Icon(Icons.error),
    );
