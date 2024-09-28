import 'package:flutter/material.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return GoogleFonts.inter(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    letterSpacing: fontSize * -0.03,
  );
}

//regular style

TextStyle getRegularStyle(
    {required Color color,required double fontSize}) {
  return getTextStyle(fontSize, FontWeightManager.regular, color);
}
//medium style

TextStyle getMediumStyle(
    {required Color color,required double fontSize}) {
  return getTextStyle(fontSize, FontWeightManager.medium, color);
}
//light style

TextStyle getLightStyle(
    {required Color color,required double fontSize}) {
  return getTextStyle(fontSize, FontWeightManager.light, color);
}
//semiBold style

TextStyle getSemiBoldStyle(
    {required Color color,required double fontSize}) {
  return getTextStyle(fontSize, FontWeightManager.semiBold, color);
}
//bold style

TextStyle getBoldStyle(
    {required Color color,required double fontSize}) {
  return getTextStyle(fontSize, FontWeightManager.bold, color);
}
