import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:smart_light/views/widgets/roomTile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A4CA2),
      body: Container(
        child: Column(
          children: [
            Container(
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
                        onTap: () => print("Bed Room"),
                        img: 'assets/bed.svg',
                        roomName: 'Bed Room',
                      ),
                      RoomTile(
                        lights: '2 Lights',
                        onTap: () => print("Bed Room"),
                        img: 'assets/room.svg',
                        roomName: 'Living Room',
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoomTile(
                        lights: '5 Lights',
                        onTap: () => Get.to(
                          () => HomePage(),
                        ),
                        img: 'assets/kitchen.svg',
                        roomName: 'Kitchen',
                      ),
                      RoomTile(
                        lights: '1 Lights',
                        onTap: () => print("Bed Room"),
                        img: 'assets/bathtube.svg',
                        roomName: 'Bathroom',
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoomTile(
                        lights: '5 Lights',
                        onTap: () => print("Bed Room"),
                        img: 'assets/house.svg',
                        roomName: 'Outdoor',
                      ),
                      RoomTile(
                        lights: '2 Lights',
                        onTap: () => print("Bed Room"),
                        img: 'assets/balcony.svg',
                        roomName: 'Balcony',
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () => print("bulb"),
                      child: Container(
                        child: SvgPicture.asset('assets/bulb.svg'),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => print("Home"),
                      child: Container(
                        child: SvgPicture.asset('assets/feather-home.svg'),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => print("Settings"),
                      child: Container(
                        child: SvgPicture.asset('assets/feather-settings.svg'),
                      ),
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
