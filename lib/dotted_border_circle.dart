import 'dart:math';

import 'package:flutter/material.dart';

class DottedBorderCircle extends StatelessWidget {
  final double size;
  final Color borderColor;
  final double borderWidth;
  final Color dotColor;
  final double dotSpacing;

  const DottedBorderCircle({
    super.key,
    required this.size,
    this.borderColor = Colors.white,
    this.borderWidth = 1.0,
    this.dotColor = Colors.white,
    this.dotSpacing = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(
        painter: DottedCirclePainter(
          borderColor: borderColor,
          borderWidth: borderWidth,
          dotColor: dotColor,
          dotSpacing: dotSpacing,
        ),
      ),
    );
  }
}

class DottedCirclePainter extends CustomPainter {
  final Color borderColor;
  final double borderWidth;
  final Color dotColor;
  final double dotSpacing;

  DottedCirclePainter({
    required this.borderColor,
    required this.borderWidth,
    required this.dotColor,
    required this.dotSpacing,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final double radius = size.width / 2;
    final double dotRadius = borderWidth / 4;

    final Paint borderPaint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth;

    final Paint dotPaint = Paint()..color = dotColor;

    canvas.drawCircle(Offset(radius, radius), radius - dotRadius, borderPaint);

    for (double i = 0; i < 360; i += dotSpacing) {
      final double radians = i * (3.14 / 180);
      final double startX = radius + (radius - dotRadius) * cos(radians);
      final double startY = radius + (radius - dotRadius) * sin(radians);
      final double endX =
          radius + (radius - dotRadius - dotSpacing) * cos(radians);
      final double endY =
          radius + (radius - dotRadius - dotSpacing) * sin(radians);
      canvas.drawLine(Offset(startX, endX), Offset(startY, endY), dotPaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
