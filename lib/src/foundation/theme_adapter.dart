// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ala_ui/src/foundation/theme_foundation.dart';
import 'package:flutter/material.dart';

class ThemeAdapter {
  ThemeFoundation themeFoundation;
  ThemeAdapter({
    required this.themeFoundation,
  });

  static ThemeData toThemeData(ThemeFoundation foundation) {
    return ThemeData(
      fontFamily: foundation.typo.primaryFontFamily,
      colorScheme: ColorScheme(
        primary: foundation.color.primary,
        secondary: foundation.color.secondary,
        onSecondary: foundation.color.onSecondary,
        surface: foundation.color.surface,
        background: foundation.color.background,
        error: foundation.color.error,
        onPrimary: foundation.color.onPrimary,
        onSurface: foundation.color.onSurface,
        onBackground: foundation.color.onBackground,
        onError: foundation.color.onError,
        brightness: foundation.brightness,
      ),
      primaryColor: foundation.color.primary,
      splashColor: foundation.color.secondary,
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: foundation.typo.body.copyWith(color: foundation.color.onBackground),
        labelStyle: foundation.typo.body.copyWith(color: foundation.color.onBackground),
        errorStyle: foundation.typo.caption.copyWith(color: foundation.color.error),
        focusColor: foundation.color.primary,
      ),
      brightness: foundation.brightness,
      cardColor: foundation.color.surface,
      scaffoldBackgroundColor: foundation.color.background,
    );
  }
}
