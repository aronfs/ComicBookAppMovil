


import 'package:comicbookapp/ui.theme/size_app.dart';
import 'package:flutter/material.dart';

class AppTextStyle {

  TextStyle h134;
  TextStyle h132;
  TextStyle h226;
  TextStyle h220;
  TextStyle h214;
  TextStyle h227;

  TextStyle paragraph16;
  TextStyle paragraph12;

  AppTextStyle({
    required this.h134,
    required this.h132,
    required this.h226,
    required this.h220,
    required this.h214,
    required this.h227,
    required this.paragraph16,
    required this.paragraph12});

  factory AppTextStyle.applyColor(AppTextStyle appTextStyle, Color color){
    return AppTextStyle(
        h227: appTextStyle.h227.copyWith(fontSize: sizeTextH226, color: color),
        h134: appTextStyle.h132.copyWith(fontSize: sizeTextH134, color: color),
        h132: appTextStyle.h134.copyWith(fontSize: sizeTextH132, color: color),
        h226: appTextStyle.h226.copyWith(fontSize: sizeTextH226, color: color),
        h220: appTextStyle.h220.copyWith(fontSize: sizeTextH220, color: color),
        h214: appTextStyle.h214.copyWith(fontSize: sizeTextH214, color: color),
        paragraph16: appTextStyle.paragraph16.copyWith(fontSize: sizeTextParagraph16, color: color),
        paragraph12: appTextStyle.paragraph12.copyWith(fontSize: sizeTextParagraph12, color: color)
    );
  }

  factory AppTextStyle.textStyle(){
    return AppTextStyle(
        h227: _styleRalewayBoldd.copyWith(fontSize: sizeTextH226),
        h134: _styleRalewayBold.copyWith(fontSize: sizeTextH134),
        h132: _styleRalewayBold.copyWith(fontSize: sizeTextH132),
        h226: _styleRalewaySemiBold.copyWith(fontSize: sizeTextH226),
        h220: _styleRalewaySemiBold.copyWith(fontSize: sizeTextH220),
        h214: _styleRalewaySemiBold.copyWith(fontSize: sizeTextH214),
        paragraph16: _stylePoppins.copyWith(fontSize: sizeTextParagraph16),
        paragraph12: _stylePoppins.copyWith(fontSize: sizeTextParagraph12)
    );
  }


  static TextStyle get _styleRalewayBoldd => const TextStyle(
      fontFamily: "Raleway-Regular",
      fontWeight: FontWeight.w900
  );


  static TextStyle get _styleRalewayBold => const TextStyle(
      fontFamily: "Raleway-Regular",
      fontWeight: FontWeight.w700
  );

  static TextStyle get _styleRalewaySemiBold => const TextStyle(
      fontFamily: "Raleway-Regular",
      fontWeight: FontWeight.w600
  );

  static TextStyle get _stylePoppins => const TextStyle(
    fontFamily: "Poppins-Regular"
  );

}