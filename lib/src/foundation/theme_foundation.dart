import 'package:flutter/foundation.dart';

import 'foundation.dart';

class ThemeFoundation {
  ColorsData color;
  TypographyData typo;
  ShapeData shape;
  Brightness brightness;

  ThemeFoundation({
    required this.color,
    required this.typo,
    required this.shape,
    required this.brightness,
  });

  factory ThemeFoundation.light() => ThemeFoundation(
        color: ColorsData.light(),
        shape: ShapeData.getDefault(),
        typo: const TypographyData.getDefault(),
        brightness: Brightness.light,
      );

  factory ThemeFoundation.dark() => ThemeFoundation(
        color: ColorsData.dark(),
        shape: ShapeData.getDefault(),
        typo: const TypographyData.getDefault(),
        brightness: Brightness.dark,
      );
}
