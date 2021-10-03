import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class RoomeTile extends StatelessWidget {
  final String img;
  final String roomName;
  final String lights;
  final Function onTap;

  const RoomeTile({
    Key? key,
    required this.img,
    required this.roomName,
    required this.lights,
    required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () => onTap,
        child: Container(
          margin: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
          padding: const EdgeInsets.all(20),
          width: Get.width / 2.5,
          height: Get.height / 5.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Color(0x33000000),
                blurRadius: 3,
                offset: Offset(-1.50, -1.50),
              ),
              BoxShadow(
                color: Color(0x33000000),
                blurRadius: 3,
                offset: Offset(1.50, 1.50),
              ),
            ],
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(img),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    roomName,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    lights,
                    style: TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RoomTile extends StatelessWidget {
  final String img;
  final String roomName;
  final String lights;
  final VoidCallback onTap;

  RoomTile({
    required this.img,
    required this.lights,
    required this.onTap,
    required this.roomName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(13),
        width: Get.width / 2.6,
        // height: Get.height / 5.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Color(0x33000000),
              blurRadius: 3,
              offset: Offset(-1.50, -1.50),
            ),
            BoxShadow(
              color: Color(0x33000000),
              blurRadius: 3,
              offset: Offset(1.50, 1.50),
            ),
          ],
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(img),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Text(
                    roomName,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 20),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Text(
                    lights,
                    style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
