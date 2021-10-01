import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smart_light/views/widgets/roomTile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String circlesBG = 'assets/Circles.svg';

    return Scaffold(
      backgroundColor: Color(0xFF0A4CA2),
      body: Container(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: Get.height / 5,
              child: Stack(
                alignment: AlignmentDirectional.center,
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
                      Container(
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
                    ],
                  ),
                  Container(
                    child: SvgPicture.asset(
                      circlesBG,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
              decoration: BoxDecoration(
                color: Color(0xFFF6F7FB),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 20, left: 20),
                    child: Text(
                      'All Rooms',
                      style: TextStyle(
                        color: Color(0xFF022D62),
                        fontSize: Get.width / 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RoomeTile(
                        img: 'assets/bed.svg',
                        roomName: 'Bed Room',
                        lights: '4 Lights',
                        onTap: () {},
                      ),
                      RoomeTile(
                        img: 'assets/room.svg',
                        roomName: 'Bed Room',
                        onTap: () {},
                        lights: '2 Lights',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RoomeTile(
                        img: 'assets/kitchen.svg',
                        roomName: 'Kitchen',
                        onTap: () {},
                        lights: '5 Lights',
                      ),
                      RoomeTile(
                        img: 'assets/bathtube.svg',
                        roomName: 'Bathroom',
                        onTap: () {},
                        lights: '1 Lights',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RoomeTile(
                        img: 'assets/house.svg',
                        roomName: 'Outdoor',
                        onTap: () {},
                        lights: '5 Lights',
                      ),
                      RoomeTile(
                        img: 'assets/balcony.svg',
                        roomName: 'Balcony',
                        onTap: () {},
                        lights: '2 Lights',
                      ),
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
