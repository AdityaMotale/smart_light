// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:smart_light/views/widgets/colorPallete.dart';
// import 'package:smart_light/views/widgets/lightSwitches.dart';
// import 'package:smart_light/views/widgets/scenesCard.dart';

// class CustomizationPage extends StatefulWidget {
//   @override
//   _CustomizationPageState createState() => _CustomizationPageState();
// }

// class _CustomizationPageState extends State<CustomizationPage> {
//   double intensity = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF0A4CA2),
//       body: Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Container(
//               padding: const EdgeInsets.all(10),
//               child: Stack(
//                 alignment: AlignmentDirectional.topCenter,
//                 children: [
//             //       Container(
//             //         child: Column(
//             //           children: [
//             //             Row(
//             //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             //               children: [
//             //                 Row(
//             //                   children: [
//             //                     SvgPicture.asset(
//             //                       'assets/ionic-md-arrow-round-back.svg',
//             //                       height: 20,
//             //                     ),
//             //                     SizedBox(
//             //                       width: 10,
//             //                     ),
//             //                     Text(
//             //                       "\nBed\nRoom",
//             //                       style: TextStyle(
//             //                           color: Colors.white,
//             //                           fontWeight: FontWeight.w700,
//             //                           fontSize: 30),
//             //                     )
//             //                   ],
//             //                 ),
//             //                 SvgPicture.asset(
//             //                   'assets/light bulb.svg',
//             //                 ),
//             //               ],
//             //             ),
//             //             Container(
//             //               padding: EdgeInsets.only(left: 20),
//             //               alignment: Alignment.centerLeft,
//             //               child: Text(
//             //                 "4 Lights",
//             //                 style: TextStyle(
//             //                   color: Colors.amber,
//             //                   fontWeight: FontWeight.w800,
//             //                   fontSize: 20,
//             //                 ),
//             //               ),
//             //             ),
//             //             Container(
//             //               padding: const EdgeInsets.all(5),
//             //               margin: const EdgeInsets.all(5),
//             //               height: Get.height / 11,
//             //               child: ListView(
//             //                 scrollDirection: Axis.horizontal,
//             //                 children: [
//             //                   LightSwitches(
//             //                     img: 'assets/surface1.svg',
//             //                     textColor: Color(0xFF022D62),
//             //                     color: Colors.white,
//             //                     switchName: 'Main Light',
//             //                   ),
//             //                   LightSwitches(
//             //                     img: 'assets/furniture-and-household.svg',
//             //                     textColor: Colors.white,
//             //                     color: Color(0xFF022D62),
//             //                     switchName: 'Desk Light',
//             //                   ),
//             //                   LightSwitches(
//             //                     img: 'assets/bed (1).svg',
//             //                     textColor: Color(0xFF022D62),
//             //                     color: Colors.white,
//             //                     switchName: 'Bed Light',
//             //                   ),
//             //                 ],
//             //               ),
//             //             ),
//             //           ],
//             //         ),
//             //       ),
//             //       Container(
//             //         child: SvgPicture.asset(
//             //           'assets/Circles.svg',
//             //           fit: BoxFit.cover,
//             //         ),
//             //       )
//             //     ],
//             //   ),
//             // ),
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(40),
//                   topRight: Radius.circular(40),
//                 ),
//               ),
//               child: Column(
//                 children: [
//                   Container(
//                     padding: const EdgeInsets.only(left: 20, top: 20),
//                     alignment: Alignment.centerLeft,
//                     child: Text(
//                       "Intensity",
//                       style: TextStyle(
//                         color: Color(0xFF022D62),
//                         fontSize: 25,
//                         fontWeight: FontWeight.w800,
//                       ),
//                     ),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.only(
//                       left: 10,
//                       right: 10,
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         SvgPicture.asset('assets/solution1.svg'),
//                         Expanded(
//                           child: Slider(
//                             value: intensity,
//                             onChanged: (newIntensity) {
//                               setState(() {
//                                 intensity = newIntensity;
//                               });
//                             },
//                             divisions: 6,
//                           ),
//                         ),
//                         SvgPicture.asset('assets/solution.svg'),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.only(left: 20, top: 20),
//                     alignment: Alignment.centerLeft,
//                     child: Text(
//                       "Color",
//                       style: TextStyle(
//                         color: Color(0xFF022D62),
//                         fontSize: 25,
//                         fontWeight: FontWeight.w800,
//                       ),
//                     ),
//                   ),
//                   Container(
//                     padding: EdgeInsets.only(left: 10, top: 10),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         ColorCircle(
//                           child: Text(""),
//                           color: Color(0xFFFE9A9A),
//                         ),
//                         ColorCircle(
//                           child: Text(""),
//                           color: Color(0xFF94EB9D),
//                         ),
//                         ColorCircle(
//                           child: Text(""),
//                           color: Color(0xFF94CAEC),
//                         ),
//                         ColorCircle(
//                           child: Text(""),
//                           color: Color(0xFFA494EC),
//                         ),
//                         ColorCircle(
//                           child: Text(""),
//                           color: Color(0xFFDE94ED),
//                         ),
//                         ColorCircle(
//                           child: Text(""),
//                           color: Color(0xFFEAD093),
//                         ),
//                         ColorCircle(
//                           child: SvgPicture.asset(
//                             'assets/+.svg',
//                             color: Color(0xFF022D62),
//                           ),
//                           color: Colors.white,
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.only(left: 20, top: 20),
//                     alignment: Alignment.centerLeft,
//                     child: Text(
//                       "Scenes",
//                       style: TextStyle(
//                         color: Color(0xFF022D62),
//                         fontSize: 25,
//                         fontWeight: FontWeight.w800,
//                       ),
//                     ),
//                   ),
//                   Row(
//                     children: [
//                       ScenesCard(
//                         sceneName: 'Birthday',
//                         initColor: Color(0xffff9b9b),
//                         finalColor: Color(0xffffb693),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),),
//       );
      
//   }
// }
