import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
//main theme
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.disabledButtonColor,
    splashColor: ColorManager.lightPrimary, //ripple effect
//cardveiw theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),
//appbar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.white,
      elevation: AppSize.s0,
      shadowColor: ColorManager.lightPrimary,
      titleTextStyle: getSemiBoldStyle(
        color: ColorManager.black,
        fontSize: FontSizeManager.s18,
      ),
    ),
//bottom navbar theme
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedLabelStyle: getMediumStyle(
        color: ColorManager.primary,
        fontSize: FontSizeManager.s12,
      ),
      selectedItemColor: ColorManager.primary,
    ),
//button theme
    buttonTheme: ButtonThemeData(
      shape: StadiumBorder(),
      disabledColor: ColorManager.disabledButtonColor,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.lightPrimary,
    ),
    //elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          textStyle: getSemiBoldStyle(
            color: ColorManager.white,
            fontSize: FontSizeManager.s18,
          ),
          foregroundColor: ColorManager.white,
          backgroundColor: ColorManager.primary,
          shape: const StadiumBorder()),
    ),
    //outlined button theme
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(
          color: ColorManager.black,
          fontSize: FontSizeManager.s18,
        ),
        foregroundColor: ColorManager.black,
        side: BorderSide(
          color: ColorManager.outlineButtonBorderColor,
          width: 1.5,
        ),
        shape: StadiumBorder(),
      ),
    ),
    //Text button theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: getSemiBoldStyle(
          color: ColorManager.white,
          fontSize: FontSizeManager.s18,
        ),
        foregroundColor: ColorManager.primary,
      ),
    ),
//text theme
    textTheme: TextTheme(
      titleLarge: getMediumStyle(
        color: ColorManager.black,
        fontSize: FontSizeManager.s26,
      ),
      titleMedium: getSemiBoldStyle(
        color: ColorManager.white,
        fontSize: FontSizeManager.s14,
      ),
      titleSmall: getRegularStyle(
        color: ColorManager.black,
        fontSize: FontSizeManager.s14,
      ),
      bodyLarge: getSemiBoldStyle(
        color: ColorManager.black,
        fontSize: FontSizeManager.s26,
      ),
      bodyMedium: getRegularStyle(
        color: ColorManager.black,
        fontSize: FontSizeManager.s26,
      ),
      bodySmall: getMediumStyle(
        color: ColorManager.black,
        fontSize: FontSizeManager.s14,
      ),
      labelLarge: getSemiBoldStyle(
        color: ColorManager.black,
        fontSize: FontSizeManager.s20,
      ),
      labelMedium: getRegularStyle(
        color: ColorManager.black,
        fontSize: FontSizeManager.s16,
      ),
      labelSmall: getRegularStyle(
        color: ColorManager.black,
        fontSize: FontSizeManager.s12,
      ),
    ),
//input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.only(left: AppPadding.p16),
      hintStyle: getRegularStyle(
        color: ColorManager.textfieldHintColor,
        fontSize: FontSizeManager.s16,
      ),
      labelStyle: getMediumStyle(
        color: ColorManager.grey,
        fontSize: FontSizeManager.s14,
      ),
      errorStyle: getRegularStyle(
        color: ColorManager.textErrorColor,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.grey,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.textErrorColor,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
    ),
  );
}
