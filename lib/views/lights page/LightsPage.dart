import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:smart_light/core/widgets/bottomNavBar.dart';
import 'package:smart_light/core/widgets/featureSnackbar.dart';
import 'package:smart_light/views/lights%20page/controllers/lampLight_controller.dart';
import 'package:smart_light/views/lights%20page/widgets/colorPallete.dart';
import 'package:smart_light/views/lights%20page/widgets/featureTitle.dart';
import 'package:smart_light/views/lights%20page/widgets/lightSwitches.dart';
import 'package:smart_light/views/lights%20page/widgets/scenesCard.dart';

class LightPage extends StatelessWidget {
  final light = Get.put<LampLightController>(
    LampLightController(),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A4CA2),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AnimationConfiguration.synchronized(
                              child: SlideAnimation(
                                curve: Curves.easeInOutQuint,
                                duration: Duration(seconds: 1),
                                child: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(
                                              20,
                                              55,
                                              0,
                                              20,
                                            ),
                                            child: SvgPicture.asset(
                                              'assets/ionic-md-arrow-round-back.svg',
                                              height: 20,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            Get.arguments['room'],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 30),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                          top: 20,
                                          left: 40,
                                        ),
                                        child: Text(
                                          Get.arguments['lights'],
                                          style: TextStyle(
                                            color: Color(0xffFFA435),
                                            fontSize: 25,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 20, 20),
                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    'assets/Group 38.svg',
                                  ),
                                  GetX<LampLightController>(
                                    init: LampLightController(),
                                    builder: (_) => Container(
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(_.color.value),
                                            blurRadius: 8,
                                            offset: Offset(
                                                light.intensity.value, 0),
                                          ),
                                          BoxShadow(
                                            color: Color(_.color.value),
                                            blurRadius: 8,
                                            offset: Offset(
                                                -(light.intensity.value), 0),
                                          ),
                                          BoxShadow(
                                            color: Color(_.color.value),
                                            blurRadius: 8,
                                            offset: Offset(
                                                0, light.intensity.value / 2),
                                          ),
                                        ],
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(100),
                                            bottomRight: Radius.circular(100)),
                                        color: Color(_.color.value),
                                        shape: BoxShape.rectangle,
                                      ),
                                      height: 20,
                                      width: 20,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: Get.height / 4,
                          child: SvgPicture.asset(
                            'assets/Circles.svg',
                            // height: Get.height / 3.8,
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: Get.height / 11,
                    child: AnimationConfiguration.staggeredList(
                      position: 0,
                      child: ScaleAnimation(
                        curve: Curves.easeInToLinear,
                        duration: Duration(
                          milliseconds: 500,
                        ),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            LightSwitches(
                              img: 'assets/surface1.svg',
                              textColor: Color(0xFF022D62),
                              color: Colors.white,
                              switchName: 'Main Light',
                            ),
                            LightSwitches(
                              img: 'assets/furniture-and-household.svg',
                              textColor: Colors.white,
                              color: Color(0xFF022D62),
                              switchName: 'Desk Light',
                            ),
                            LightSwitches(
                              img: 'assets/bed (1).svg',
                              textColor: Color(0xFF022D62),
                              color: Colors.white,
                              switchName: 'Bed Light',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Color(0xfff6f7fb),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Container(
                child: Column(
                  children: [
                    featureTitle('Intensity'),
                    Obx(
                      () => Container(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset('assets/solution1.svg'),
                            Expanded(
                              child: Slider(
                                value: light.intensity.value,
                                onChanged: (newIntensity) {
                                  light.intensity.value = newIntensity;
                                },
                                divisions: 6,
                                min: 4,
                                max: 10,
                                activeColor: Color(0xffead093),
                                inactiveColor: Color(0xffffecbf),
                              ),
                            ),
                            SvgPicture.asset('assets/solution.svg'),
                          ],
                        ),
                      ),
                    ),
                    featureTitle('Color'),
                    AnimationConfiguration.synchronized(
                      child: ScaleAnimation(
                        delay: Duration(
                          milliseconds: 100,
                        ),
                        child: Container(
                          padding: EdgeInsets.only(left: 20, top: 15),
                          child: Row(
                            children: [
                              ColorCircle(
                                child: Text(''),
                                color: Color(0xfffe9a9a),
                                onTap: () {
                                  light.changeColor(0xfffe9a9a);
                                },
                              ),
                              ColorCircle(
                                child: Text(''),
                                color: Color(0xff94eb9d),
                                onTap: () {
                                  light.changeColor(0xff94eb9d);
                                },
                              ),
                              ColorCircle(
                                child: Text(''),
                                color: Color(0xff94caec),
                                onTap: () {
                                  light.changeColor(0xff94caec);
                                },
                              ),
                              ColorCircle(
                                child: Text(''),
                                color: Color(0xffa494ec),
                                onTap: () {
                                  light.changeColor(0xffa494ec);
                                },
                              ),
                              ColorCircle(
                                child: Text(''),
                                color: Color(0xffde94ed),
                                onTap: () {
                                  light.changeColor(0xffde94ed);
                                },
                              ),
                              ColorCircle(
                                child: Text(''),
                                color: Color(0xffead093),
                                onTap: () {
                                  light.changeColor(0xffead093);
                                },
                              ),
                              ColorCircle(
                                child: SvgPicture.asset('assets/+.svg'),
                                color: Colors.white,
                                onTap: () {
                                  snackBar();
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    featureTitle('Scenes'),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                            children: [
                              ScenesCard(
                                sceneName: 'Birthday',
                                initColor: Color(0xffff9b9b),
                                finalColor: Color(0xffffb693),
                              ),
                              ScenesCard(
                                sceneName: 'Party',
                                initColor: Color(0xffa692eb),
                                finalColor: Color(0xffd291eb),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                            children: [
                              ScenesCard(
                                sceneName: 'Relax',
                                initColor: Color(0xff92c8ea),
                                finalColor: Color(0xff92d9eb),
                              ),
                              ScenesCard(
                                sceneName: 'Fun',
                                initColor: Color(0xff89dc94),
                                finalColor: Color(0xffb8ea91),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    bottomNavBar(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
