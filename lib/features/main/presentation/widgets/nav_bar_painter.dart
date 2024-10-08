import 'dart:ui';

import 'package:flutter/material.dart';

// class BottomNavBarClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     double fabRadius = 40.0; // Adjust this according to the size of your FAB
//     double centerX = size.width / 2;
//
//     path.lineTo(centerX - fabRadius, 0);
//     path.arcToPoint(
//       Offset(centerX + fabRadius, 0),
//       radius: Radius.circular(fabRadius),
//       clockwise: false,
//     );
//     path.lineTo(size.width, 0);
//     path.lineTo(size.width, size.height);
//     path.lineTo(0, size.height);
//     path.close();
//
//     return path;
//   }
//
//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }
