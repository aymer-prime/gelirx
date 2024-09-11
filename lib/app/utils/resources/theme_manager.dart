import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
//main theme
    primaryColor: ColorManager.primary,
    scaffoldBackgroundColor: ColorManager.background,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.disabledButtonColor,
    splashColor: ColorManager.lightPrimary, //ripple effect
    canvasColor: ColorManager.white,
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
      backgroundColor: ColorManager.white,
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
        padding: EdgeInsets.zero,
        textStyle: getBoldStyle(
          color: ColorManager.white,
          fontSize: FontSizeManager.s15,
        ),
        foregroundColor: ColorManager.white,
        backgroundColor: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    //outlined button theme
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.zero,
        textStyle: getBoldStyle(
          color: ColorManager.textTitleColor,
          fontSize: FontSizeManager.s15,
        ),
        foregroundColor: ColorManager.black,
        side: BorderSide(
          color: ColorManager.outlineButtonBorderColor,
          width: 1.5,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
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
      displayLarge: getSemiBoldStyle(
        color: ColorManager.textTitleColor,
        fontSize: FontSizeManager.s48,
      ),
      displayMedium: getBoldStyle(
        color: ColorManager.textTitleColor,
        fontSize: FontSizeManager.s32,
      ),
      displaySmall: getBoldStyle(
        color: ColorManager.textTitleColor,
        fontSize: FontSizeManager.s20,
      ),
      headlineLarge: getSemiBoldStyle(
        color: ColorManager.textTitleColor,
        fontSize: FontSizeManager.s18,
      ),
      headlineMedium: getSemiBoldStyle(
        color: ColorManager.textTitleColor,
        fontSize: FontSizeManager.s16,
      ),
      headlineSmall: getBoldStyle(
        color: ColorManager.textTitleColor,
        fontSize: FontSizeManager.s16,
      ),
      titleLarge: getBoldStyle(
        color: ColorManager.textTitleColor,
        fontSize: FontSizeManager.s14,
      ),
      titleMedium: getSemiBoldStyle(
        color: ColorManager.textTitleLightColor,
        fontSize: FontSizeManager.s14,
      ),
      titleSmall: getMediumStyle(
        color: ColorManager.textTitleLightColor,
        fontSize: FontSizeManager.s14,
      ),
      bodyLarge: getMediumStyle(
        color: ColorManager.textTitleColor,
        fontSize: FontSizeManager.s16,
      ),
      bodyMedium: getMediumStyle(
        color: ColorManager.textTitleLightColor,
        fontSize: FontSizeManager.s14,
      ),
      bodySmall: getSemiBoldStyle(
        color: ColorManager.textTitleLightColor,
        fontSize: FontSizeManager.s12,
      ),
      labelLarge: getSemiBoldStyle(
        color: ColorManager.textTitleColor,
        fontSize: FontSizeManager.s14,
      ),
      labelMedium: getBoldStyle(
        color: ColorManager.textTitleColor,
        fontSize: FontSizeManager.s12,
      ),
      labelSmall: getMediumStyle(
        color: ColorManager.textTitleLightColor,
        fontSize: FontSizeManager.s12,
      ),
    ),
    sliderTheme: SliderThemeData(
      overlayShape: SliderComponentShape.noOverlay,
      activeTrackColor: ColorManager.lightPrimary,
      thumbColor: ColorManager.primary,
    ),
//input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.only(left: AppPadding.p16),
      fillColor: ColorManager.textfieldFillColor,
      filled: true,
      hintStyle: getRegularStyle(
        color: ColorManager.textfieldHintColor,
        fontSize: FontSizeManager.s12,
      ),
      labelStyle: getMediumStyle(
        color: ColorManager.grey,
        fontSize: FontSizeManager.s12,
      ),
      errorStyle: getRegularStyle(
        color: ColorManager.textErrorColor,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.textfieldBorderColor,
          width: AppSize.s1,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: AppSize.s1,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s10)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.textErrorColor,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s10)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s10)),
      ),
    ),
  );
}
