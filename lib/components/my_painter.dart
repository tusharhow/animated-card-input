import 'package:flutter/material.dart';
import 'package:patterns_canvas/patterns_canvas.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height + 15);

    Pattern pattern = const DiagonalStripesThick(
        bgColor: Color(0xffE6E0D2), fgColor: Color(0xffCAD9E0));

    pattern.paintOnRect(canvas, size, rect);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}