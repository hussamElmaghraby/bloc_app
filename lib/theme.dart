import 'package:flutter/material.dart';

class MyAppTheme {
  Color? accent1;
  Color? bg1;
  bool? isDark;

  ThemeData get themeData {
    TextTheme textTheme =
        (isDark! ? ThemeData.dark() : ThemeData.light()).textTheme;

    Color? txtColor = textTheme.bodyText1!.color;
    ColorScheme colorScheme = ColorScheme(
      brightness: isDark! ? Brightness.dark : Brightness.light,
      primary: accent1!,
      primaryVariant: accent1!,
      secondary: accent1!,
      secondaryVariant: accent1!,
      background: bg1!,
      onBackground: txtColor!,
      onSurface: txtColor,
      onError: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      error: Colors.red.shade400,
      surface: bg1!,
    );

    var t = ThemeData.from(
      colorScheme: colorScheme,
      textTheme: textTheme,
    );

    return t;
  }
}
