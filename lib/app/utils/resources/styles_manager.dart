import 'package:flutter/material.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return GoogleFonts.inter(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    letterSpacing: fontSize * -0.03,
  );
}

//regular style

TextStyle getRegularStyle(
    {required Color color, double fontSize = FontSizeManager.s12}) {
  return _getTextStyle(fontSize, FontWeightManager.regular, color);
}
//medium style

TextStyle getMediumStyle(
    {required Color color, double fontSize = FontSizeManager.s12}) {
  return _getTextStyle(fontSize, FontWeightManager.medium, color);
}
//light style

TextStyle getLightStyle(
    {required Color color, double fontSize = FontSizeManager.s12}) {
  return _getTextStyle(fontSize, FontWeightManager.light, color);
}
//semiBold style

TextStyle getSemiBoldStyle(
    {required Color color, double fontSize = FontSizeManager.s12}) {
  return _getTextStyle(fontSize, FontWeightManager.semiBold, color);
}
//bold style

TextStyle getBoldStyle(
    {required Color color, double fontSize = FontSizeManager.s12}) {
  return _getTextStyle(fontSize, FontWeightManager.bold, color);
}
