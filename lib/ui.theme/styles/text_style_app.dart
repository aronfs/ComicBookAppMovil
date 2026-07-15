
import 'package:comicbookapp/ui.theme/custom_text_style.dart';
import 'package:comicbookapp/ui.theme/styles/color_scheme_app.dart';
import 'package:flutter/material.dart';


final theme = MaterialTheme.lightScheme();
AppTextStyle get textStyleBase => AppTextStyle.textStyle();
AppTextStyle get textStyleBlack => AppTextStyle.applyColor(textStyleBase, theme.secondary);
AppTextStyle get textStyleGrey => AppTextStyle.applyColor(textStyleBase, theme.surfaceTint);
AppTextStyle get textStyleWhite => AppTextStyle.applyColor(textStyleBase, Colors.white);