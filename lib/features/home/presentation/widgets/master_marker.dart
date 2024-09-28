import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/Material.dart';
import 'package:flutter/services.dart';

import '../../../../app/utils/resources/assets_manager.dart';
import '../../domain/entities/master.dart';

import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//
// class CustomMarker extends StatelessWidget {
//   final Master master; // Assuming you have a Master class
//   final VoidCallback onTap;
//
//   const CustomMarker({
//     Key? key,
//     required this.onTap,
//     required this.master,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: FutureBuilder<ui.Image>(
//         future: _loadUiImage(ImageAssets.masterMarker),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             return CustomPaint(
//               size: const Size(150, 100),
//               painter: CustomMarkerPainter(image: snapshot.data!),
//             );
//           } else if (snapshot.hasError) {
//             return const Icon(Icons.error); // Or any other error widget
//           } else {
//             return const SizedBox(width: 80, height: 100, child: Center(child: CircularProgressIndicator()));
//           }
//         },
//       ),
//     );
//   }
//   Future<ui.Image> _loadUiImage(String imageAssetPath) async {
//     final ByteData data = await rootBundle.load(imageAssetPath);
//     final codec = await ui.instantiateImageCodec(data.buffer.asUint8List());
//     final frameInfo = await codec.getNextFrame();
//     return frameInfo.image;
//   }
// }
//
// class CustomMarkerPainter extends CustomPainter {
//   final ui.Image image;
//
//   CustomMarkerPainter({required this.image});
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     final double markerRadius = size.width / 4; // Adjust radius as needed
//     final Offset markerCenter = Offset(size.width / 2, size.height / 3);
//
//
//     // 1. Clip to the Circle FIRST
//     canvas.save();
//     final Path circularPath = Path()
//       ..addOval(Rect.fromCircle(center: markerCenter, radius: markerRadius));
//     canvas.clipPath(circularPath);
//
//
//
//     // 2. Draw Marker Base (Circle and Tail) *INSIDE* the clipped region
//     final Paint markerPaint = Paint()..color = Colors.blueAccent;
//     canvas.drawCircle(markerCenter, markerRadius, markerPaint);  // Now drawn inside clip
//
//     final Path tailPath = Path();
//     final double tailWidth = 20;
//     final double tailHeight = 25;
//     final double angle = 0.3;
//
//     final double startX1 = markerCenter.dx + markerRadius * sin(angle);
//     final double startY1 = markerCenter.dy + markerRadius * cos(angle);
//
//     final double startX2 = markerCenter.dx - markerRadius * sin(angle);
//     final double startY2 = markerCenter.dy + markerRadius * cos(angle);
//
//     tailPath.moveTo(startX2, startY2);
//     tailPath.quadraticBezierTo(
//       markerCenter.dx,
//       markerCenter.dy + markerRadius + tailHeight,
//       startX1,
//       startY1,
//     );
//     tailPath.close();
//     canvas.drawPath(tailPath, markerPaint); // Tail also drawn inside clip
//
//
//
//     // 3. Draw the image (also inside the clipped region)
//     final double imageWidth = image.width.toDouble();
//     final double imageHeight = image.height.toDouble();
//     final double scale = markerRadius * 2 / (imageWidth > imageHeight ? imageWidth : imageHeight);
//     final Offset imageOffset = Offset(
//       markerCenter.dx - imageWidth * scale / 2,
//       markerCenter.dy - imageHeight * scale / 2,
//     );
//     canvas.drawImageRect(
//       image,
//       Rect.fromLTWH(0, 0, imageWidth, imageHeight),
//       Rect.fromLTWH(imageOffset.dx, imageOffset.dy, imageWidth * scale, imageHeight * scale),
//       Paint(),
//     );
//
//
//     canvas.restore(); // Remove the clipping
//   }
//
//
//
//   @override
//   bool shouldRepaint(CustomMarkerPainter oldDelegate) {
//     return oldDelegate.image != image;
//   }
// }
