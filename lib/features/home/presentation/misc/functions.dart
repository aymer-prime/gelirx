import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';

Color getCategoryColor() {
  var colors = [
    ColorManager.categoryColor1,
    ColorManager.categoryColor2,
    ColorManager.categoryColor3,
    ColorManager.categoryColor4,
    ColorManager.categoryColor5,
    ColorManager.categoryColor6,
    ColorManager.categoryColor7,
    ColorManager.categoryColor8,
    ColorManager.categoryColor9,
  ];
  Random random = Random();
  int randomNumber = random.nextInt(9);
  return colors[randomNumber];
}
