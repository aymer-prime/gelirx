import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../../../app/utils/resources/font_manager.dart';
import '../../../../../app/utils/resources/values_manager.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p28),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80),
              Center(
                  child: Image.asset(
                ImageAssets.logo,
                height: AppSize.s120,
              )),
              SizedBox(height: 20),
              const Text(
                AppStrings.loginTitle,
                style: TextStyle(
                    fontSize: FontSizeManager.s32,
                    fontWeight: FontWeightManager.semiBold),
              ),
              SizedBox(height: 20),
              IntlPhoneField(
                dropdownTextStyle: getMediumStyle(color: ColorManager.black),
                decoration: InputDecoration(
                  filled: true,
                  labelText: AppStrings.phoneNumberTitle,
                  fillColor: ColorManager.textfieldColor,
                  labelStyle: getMediumStyle(color: ColorManager.black),
                  floatingLabelStyle: getMediumStyle(color: ColorManager.black),
                  suffixStyle: getMediumStyle(color: ColorManager.black),
                  counterStyle: getMediumStyle(color: ColorManager.black),
                  helperStyle: getMediumStyle(color: ColorManager.black),
                  prefixStyle: getMediumStyle(color: ColorManager.black),
                  hintStyle: getMediumStyle(color: ColorManager.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    // Increase the circular radius
                    borderSide: BorderSide.none, // Remove the border
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    // Increase the circular radius
                    borderSide: BorderSide.none, // Remove the border
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    // Increase the circular radius
                    borderSide: BorderSide.none, // Remove the border
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    // Increase the circular radius
                    borderSide: BorderSide.none, // Remove the border
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    // Increase the circular radius
                    borderSide: BorderSide.none, // Remove the border
                  ),
                ),
                initialCountryCode: AppStrings.countryCodeTitle,
                style: getMediumStyle(color: ColorManager.black),
                pickerDialogStyle: PickerDialogStyle(
                  countryNameStyle: getMediumStyle(color: ColorManager.black),
                ),
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(AppStrings.loginTitle,
                        style: getMediumStyle(color: ColorManager.black)),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            ColorManager.textfieldColor)),
                  )),
               Center(
                 child: Text(
                  AppStrings.signinWithTitle,
                  style: getMediumStyle(color: ColorManager.black)
                 ),
               ),

            ],
          ),
        ),
      ),
    ));
  }
}
