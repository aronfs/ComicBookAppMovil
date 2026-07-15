


import 'package:comicbookapp/ui.theme/size_app.dart';
import 'package:comicbookapp/ui.theme/styles/button_style_app.dart';
import 'package:comicbookapp/ui.theme/styles/color_scheme_app.dart';
import 'package:flutter/material.dart';

final theme = MaterialTheme.lightScheme();

class AppThemeData {

  static ThemeData get themeSplash => ThemeData(
    useMaterial3: true,
    colorScheme: theme,
    scaffoldBackgroundColor: theme.primary,
        appBarTheme: AppBarTheme(
          backgroundColor: theme.primary,
        )
  );

  static ThemeData get themeWelcome => ThemeData(
      useMaterial3: true,
      colorScheme: theme,
      scaffoldBackgroundColor: theme.primary,
      appBarTheme: AppBarTheme(
        backgroundColor: theme.primary,
      ),

  );

  static OutlineInputBorder get borderText => OutlineInputBorder(
  borderRadius: BorderRadius.circular(sizeRadiusTextField),
  borderSide: BorderSide(color: theme.onPrimary),
  );

  static ThemeData get themeForms => ThemeData(
      useMaterial3: true,
      colorScheme: theme,
      scaffoldBackgroundColor: theme.onPrimary,
      appBarTheme: AppBarTheme(
        backgroundColor: theme.onPrimary,
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: blueButtonStyle,

      ),

      inputDecorationTheme: InputDecorationTheme(
        border: InputBorder.none,
        filled: true,
        fillColor: theme.onPrimary,
        hintStyle: TextStyle(color: theme.primary),
        enabledBorder: borderText,
        focusedBorder: borderText,
        disabledBorder: borderText,

      )
  );

}