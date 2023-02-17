import 'package:flutter/material.dart';

class TriangleClipper extends CustomClipper<Path> {
  final bool isSelected;
  final double width;

  TriangleClipper({required this.isSelected, required this.width});

  @override
  Path getClip(Size size) {
    final path = Path();
    if (!isSelected) {
      path.addRect(Rect.fromLTRB(0, 0, size.width, size.height));
    } else {
      final double triangleWidth = width;
      final double triangleHeight = size.height * 2;
      path.moveTo(0, 0);
      path.lineTo(0, size.height);
      path.lineTo(triangleWidth, size.height - triangleHeight);
      path.lineTo(triangleWidth, triangleHeight);
      path.close();
      path.addRect(Rect.fromLTRB(triangleWidth, 0, size.width, size.height));
    }
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
