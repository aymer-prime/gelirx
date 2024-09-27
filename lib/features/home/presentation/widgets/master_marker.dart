import 'dart:typed_data';

import 'package:flutter/Material.dart';
import 'package:flutter/services.dart';

import '../../../../app/utils/resources/assets_manager.dart';
import '../../domain/entities/master.dart';

import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class CustomMarker extends StatelessWidget {
  final Master master; // Assuming you have a Master class
  final VoidCallback onTap;
  final bool isSelected; // Add isSelected property

  const CustomMarker({
    Key? key,
    required this.onTap,
    required this.master,
    this.isSelected = false, // Default to false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomPaint(
        size: const Size(80, 100), // Fixed size for better control
        painter: CustomMarkerPainter(
          imagePath: 'assets/master_marker.png', // Your image path
          isSelected: isSelected,
        ),
      ),
    );
  }
}

class CustomMarkerPainter extends CustomPainter {
  final String imagePath;
  final bool isSelected;
  ui.Image? _image;

  CustomMarkerPainter({required this.imagePath, required this.isSelected});

  @override
  void paint(Canvas canvas, Size size) {
    // 1. Draw Pulsating Circle (if selected)
    if (isSelected) {
      final Paint pulsePaint = Paint()
        ..color = Colors.blue.withOpacity(0.5)
        ..style = PaintingStyle.fill;
      canvas.drawCircle(Offset(size.width / 2, size.height / 3), 25, pulsePaint);
    }


    // 2. Draw Marker Base (Circle and Tail)
    final Paint markerPaint = Paint()..color = Colors.blueAccent;
    final double markerRadius = size.width / 4;
    canvas.drawCircle(Offset(size.width / 2, size.height / 3), markerRadius, markerPaint);

    final Path tailPath = Path();
    tailPath.moveTo(size.width / 2 - 10, size.height * 2/3 );
    tailPath.lineTo(size.width / 2 + 10, size.height * 2/3);
    tailPath.lineTo(size.width / 2, size.height);
    tailPath.close();
    canvas.drawPath(tailPath, markerPaint);


    // 3. Draw Image (after loading)
    if (_image != null) {
      final double imageWidth = _image!.width.toDouble();
      final double imageHeight = _image!.height.toDouble();

      final double scale = markerRadius * 2 / imageWidth;  // Scale image to fit circle
      final Offset imageOffset = Offset(
        size.width / 2 - imageWidth * scale / 2,
        size.height / 3 - imageHeight * scale / 2,
      );
      canvas.drawImageRect(
          _image!,
          Rect.fromLTWH(0, 0, imageWidth, imageHeight),
          Rect.fromLTWH(imageOffset.dx, imageOffset.dy, imageWidth * scale, imageHeight * scale),
          Paint());
    } else {
      _loadImage(); // Load only if not already loaded
    }

  }

  void _loadImage() async {
    final ByteData data = await rootBundle.load(ImageAssets.masterMarker);
    final codec = await ui.instantiateImageCodec(data.buffer.asUint8List());
    final frameInfo = await codec.getNextFrame();
    _image = frameInfo.image;
  }


  @override
  bool shouldRepaint(CustomMarkerPainter oldDelegate) {

    return oldDelegate.imagePath != imagePath ||
        oldDelegate.isSelected != isSelected ||
        oldDelegate._image != _image;
  }
}
