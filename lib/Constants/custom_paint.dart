import 'package:flutter/material.dart';

import 'color_constants.dart';

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = kPrimaryColor;
    var path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height / 1.5);

    path.lineTo(0, size.height);
    // close the path to form a bounded shape
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
