
import 'package:comicbookapp/ui.theme/size_app.dart';
import 'package:comicbookapp/ui.theme/styles/color_scheme_app.dart';
import 'package:comicbookapp/ui.theme/styles/text_style_app.dart';
import 'package:flutter/material.dart';

final theme = MaterialTheme.lightScheme();


ButtonStyle get blueButtonStyle => ElevatedButton.styleFrom(
  backgroundColor: theme.primary,
  foregroundColor: theme.onPrimary,
  textStyle: textStyleBase.h214,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadiusGeometry.circular(sizeRadiusButton),
  ),
);



ButtonStyle get whiteButtonStyle => ElevatedButton.styleFrom(
  backgroundColor: theme.onPrimary,
  foregroundColor: theme.primary,
  textStyle: textStyleBase.h214,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadiusGeometry.circular(sizeRadiusButton),
  ),
);

