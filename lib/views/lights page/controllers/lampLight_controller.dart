import 'package:get/get.dart';

class LampLightController extends GetxController {
  var color = 0xffead093.obs;
  var oppacity = 1.0.obs;
  var lightState = true.obs;

  void changeColor(int newColor) {
    color.value = newColor;
  }

  void lightSwitch() {
    if (lightState.isTrue) {
      oppacity.value = 0;
      lightState.value = false;
    } else if (lightState.isFalse) {
      oppacity.value = 1;
      lightState.value = true;
    }
  }
}
