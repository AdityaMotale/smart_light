import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:smart_light/views/widgets/colorPallete.dart';
import 'package:smart_light/views/widgets/lightSwitches.dart';
import 'package:smart_light/views/widgets/scenesCard.dart';

class LightsPage extends StatefulWidget {
  @override
  _LightsPageState createState() => _LightsPageState();
}

class _LightsPageState extends State<LightsPage> {
  double intensity = 0;
  Color color = Color(0xffead093);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A4CA2),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/ionic-md-arrow-round-back.svg',
                                height: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "\nBed\nRoom",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 30),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                'assets/Group 38.svg',
                              ),
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: [
                                      BoxShadow(
                                        color: color,
                                        blurRadius: 4,
                                        offset: Offset(-2, 2),
                                      ),
                                      BoxShadow(
                                        color: color,
                                        blurRadius: 4,
                                        offset: Offset(2, -2),
                                      ),
                                    ]),
                              )
                            ],
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "4 Lights",
                          style: TextStyle(
                            color: Colors.amber,
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.all(5),
                        height: Get.height / 11,
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
                    ],
                  ),
                  SvgPicture.asset(
                    'assets/Circles.svg',
                    height: Get.height / 3.8,
                    fit: BoxFit.fitWidth,
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Intensity",
                      style: TextStyle(
                        color: Color(0xFF022D62),
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset('assets/solution1.svg'),
                        Expanded(
                          child: Slider(
                            value: intensity,
                            onChanged: (newIntensity) {
                              setState(() {
                                intensity = newIntensity;
                              });
                            },
                            divisions: 6,
                          ),
                        ),
                        SvgPicture.asset('assets/solution.svg'),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Color",
                      style: TextStyle(
                        color: Color(0xFF022D62),
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ColorCircle(
                          child: Text(""),
                          color: Color(0xFFFE9A9A),
                          onTap: () {
                            setState(() {
                              color = Color(0xFFFE9A9A);
                            });
                          },
                        ),
                        ColorCircle(
                          child: Text(""),
                          color: Color(0xFF94EB9D),
                          onTap: () {
                            setState(() {
                              color = Color(0xFF94EB9D);
                            });
                          },
                        ),
                        ColorCircle(
                          child: Text(""),
                          color: Color(0xFF94CAEC),
                          onTap: () {
                            setState(() {
                              color = Color(0xFF94CAEC);
                            });
                          },
                        ),
                        ColorCircle(
                          child: Text(""),
                          color: Color(0xFFA494EC),
                          onTap: () {
                            setState(() {
                              color = Color(0xFFA494EC);
                            });
                          },
                        ),
                        ColorCircle(
                          child: Text(""),
                          color: Color(0xFFDE94ED),
                          onTap: () {
                            setState(() {
                              color = Color(0xFFDE94ED);
                            });
                          },
                        ),
                        ColorCircle(
                          child: Text(""),
                          color: Color(0xFFEAD093),
                          onTap: () {
                            setState(() {
                              color = Color(0xFFEAD093);
                            });
                          },
                        ),
                        ColorCircle(
                          child: SvgPicture.asset(
                            'assets/+.svg',
                            color: Color(0xFF022D62),
                          ),
                          color: Colors.white,
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Scenes",
                      style: TextStyle(
                        color: Color(0xFF022D62),
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(bottom: 20),
                alignment: Alignment.bottomCenter,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: SvgPicture.asset('assets/bulb.svg'),
                    ),
                    Container(
                      child: SvgPicture.asset('assets/feather-home.svg'),
                    ),
                    Container(
                      child: SvgPicture.asset('assets/feather-settings.svg'),
                    ),
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
