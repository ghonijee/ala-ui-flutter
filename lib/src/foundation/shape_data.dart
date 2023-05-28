import 'package:flutter/material.dart';

class ShapeData {
  const ShapeData({
    required this.cardBorderRadius,
  });

  ShapeData.getDefault() : cardBorderRadius = BorderRadius.circular(24);

  // final ShapeBorder buttonShape;
  // final ShapeBorder circleButtonShape;
  final BorderRadius cardBorderRadius;
}
