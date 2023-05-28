import '../token/colors.dart';
import 'package:flutter/painting.dart';

class ColorsData {
  // Material color scheme
  final Color primary;
  final Color primaryDark;
  final Color onPrimary;
  final Color secondary;
  final Color secondaryDark;
  final Color onSecondary;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color error;
  final Color onError;

  ColorsData({
    required this.primary,
    required this.primaryDark,
    required this.onPrimary,
    required this.secondary,
    required this.secondaryDark,
    required this.onSecondary,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.error,
    required this.onError,
  });

  factory ColorsData.light() => ColorsData(
        primary: ColorsToken.seaGreen,
        primaryDark: ColorsToken.seaGreenDark,
        onPrimary: ColorsToken.whitePrimary,
        secondary: ColorsToken.xanthous,
        secondaryDark: ColorsToken.xanthousDark,
        onSecondary: ColorsToken.blackPrimary,
        background: ColorsToken.whiteTrue,
        onBackground: ColorsToken.blackPrimary,
        surface: ColorsToken.whitePrimary,
        onSurface: ColorsToken.blackPrimary,
        error: ColorsToken.imperialRed,
        onError: ColorsToken.whiteTrue,
      );

  factory ColorsData.dark() => ColorsData(
        primary: ColorsToken.seaGreenDark,
        primaryDark: ColorsToken.seaGreenDark,
        onPrimary: ColorsToken.whitePrimary,
        secondary: ColorsToken.xanthous,
        secondaryDark: ColorsToken.xanthousDark,
        onSecondary: ColorsToken.blackPrimary,
        background: ColorsToken.black,
        onBackground: ColorsToken.whitePrimary,
        surface: ColorsToken.blackPrimary,
        onSurface: ColorsToken.whitePrimary,
        error: ColorsToken.imperialRed,
        onError: ColorsToken.whiteTrue,
      );
}
