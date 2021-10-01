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
              child: Stack(
                alignment: AlignmentDirectional.topStart,
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
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
              decoration: BoxDecoration(
                color: Color(0xFFF6F7FB),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      bottom: 20,
                    ),
                    child: Text(
                      'All Rooms',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: Get.width / 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RoomeTile(width: 2, height: 2),
                      RoomeTile(width: 2, height: 2),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RoomeTile(width: 2, height: 2),
                      RoomeTile(width: 2, height: 2),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RoomeTile(width: 2, height: 2),
                      RoomeTile(width: 2, height: 2),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
