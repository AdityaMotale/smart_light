import 'package:get/get.dart';

class LampLightController extends GetxController {
  var color = 0xffead093.obs;
  var intensity = 4.0.obs;

  void changeColor(int newColor) {
    color.value = newColor;
  }
}
