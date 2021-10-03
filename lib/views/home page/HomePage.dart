import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:smart_light/core/widgets/bottomNavBar.dart';
import 'package:smart_light/views/home%20page/widgets/roomTile.dart';
import 'package:smart_light/views/lights%20page/LightsPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A4CA2),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 10,
                right: 5,
                left: 5,
              ),
              height: Get.height / 5,
              child: Stack(
                alignment: AlignmentDirectional.center,
                clipBehavior: Clip.hardEdge,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Control\nPanel",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: Get.width / 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => print("Profile"),
                        child: Container(
                          padding: const EdgeInsets.only(right: 20),
                          child: CircleAvatar(
                            foregroundColor: Colors.transparent,
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage(
                              'assets/user.png',
                            ),
                            radius: Get.width / 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: SvgPicture.asset(
                      'assets/Circles.svg',
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF6F7FB),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 15, left: 40),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'All Rooms',
                            style: TextStyle(
                              color: Color(0xFF022D62),
                              fontSize: Get.width / 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoomTile(
                              lights: '4 Lights',
                              onTap: () => Get.to(() => LightPage(),
                                  arguments: {
                                    'lights': '4 Lights',
                                    'room': '\nBed\nRoom'
                                  }),
                              img: 'assets/bed.svg',
                              roomName: 'Bed Room',
                            ),
                            RoomTile(
                              lights: '2 Lights',
                              img: 'assets/room.svg',
                              roomName: 'Living Room',
                              onTap: () => Get.to(() => LightPage(),
                                  arguments: {
                                    'lights': '2 Lights',
                                    'room': '\nLiving\nRoom'
                                  }),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoomTile(
                              lights: '5 Lights',
                              img: 'assets/kitchen.svg',
                              roomName: 'Kitchen',
                              onTap: () => Get.to(() => LightPage(),
                                  arguments: {
                                    'lights': '5 Lights',
                                    'room': '\nKitchen'
                                  }),
                            ),
                            RoomTile(
                              lights: '1 Light',
                              img: 'assets/bathtube.svg',
                              roomName: 'Bathroom',
                              onTap: () => Get.to(() => LightPage(),
                                  arguments: {
                                    'lights': '1 Light',
                                    'room': '\nBathroom'
                                  }),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoomTile(
                              lights: '5 Lights',
                              img: 'assets/house.svg',
                              roomName: 'Outdoor',
                              onTap: () => Get.to(() => LightPage(),
                                  arguments: {
                                    'lights': '5 Lights',
                                    'room': '\nOutdoor'
                                  }),
                            ),
                            RoomTile(
                              lights: '2 Lights',
                              img: 'assets/balcony.svg',
                              roomName: 'Balcony',
                              onTap: () => Get.to(() => LightPage(),
                                  arguments: {
                                    'lights': '2 Lights',
                                    'room': '\nBalcony'
                                  }),
                            )
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: bottomNavBar(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
