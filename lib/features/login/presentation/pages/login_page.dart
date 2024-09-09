import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gelirx/app/extentions/context.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/enums.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:gelirx/features/login/presentation/bloc/login_bloc.dart';
import 'package:gelirx/features/login/presentation/widgets/social_login_button.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../../../../app/utils/resources/font_manager.dart';
import '../../../../../app/utils/resources/values_manager.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController otpController = TextEditingController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
          onTap: (){
            FocusScope.of(context).unfocus();
          },
          child: SafeArea(
                child: Padding(
          padding: const EdgeInsets.all(AppPadding.p28),
          child: Container(
            child: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
               return SingleChildScrollView(
                 child: Column(
                             mainAxisSize: MainAxisSize.max,
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                  const SizedBox(height: AppSize.s80),
                  Center(
                      child: Image.asset(
                    ImageAssets.logo,
                    height: AppSize.s120,
                  )),
                  const SizedBox(height: AppSize.s20),
                  const Text(
                    AppStrings.loginTitle,
                    style: TextStyle(
                        fontSize: FontSizeManager.s32,
                        fontWeight: FontWeightManager.semiBold),
                  ),
                  const SizedBox(height: AppSize.s20),
                  IntlPhoneField(
                    dropdownTextStyle: getMediumStyle(color: ColorManager.black),
                    decoration: InputDecoration(
                      filled: true,
                      labelText: AppStrings.phoneNumberTitle,
                      fillColor: ColorManager.textfieldColor,
                      labelStyle: context.textTheme.titleMedium,
                      floatingLabelStyle: context.textTheme.titleMedium,
                      suffixStyle: context.textTheme.titleMedium,
                      counterStyle:context.textTheme.titleMedium,
                      helperStyle: context.textTheme.titleMedium,
                      prefixStyle: context.textTheme.titleMedium,
                      hintStyle: context.textTheme.titleMedium,
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
                    style: context.textTheme.titleMedium,
                    pickerDialogStyle: PickerDialogStyle(
                      countryNameStyle: getMediumStyle(color: ColorManager.black),
                    ),
                    onChanged: (phone) {
                      phoneController.text = phone.completeNumber;
                    },
                  ),
                 if (state.verificationId.isSome()) ...[
                   const SizedBox(height: AppSize.s20), // Add spacing
                   TextField(
                     controller: otpController,
                     decoration: InputDecoration(
                       labelText: AppStrings.enterOTPTitle,
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(30.0),
                         borderSide: BorderSide.none,
                       ),
                       fillColor: ColorManager.textfieldColor,
                       filled: true,
                     ),
                     onChanged: (otp) {
                       context.read<AuthBloc>().add(AuthEvent.verifyPhoneNumber(
                         verificationId: state.verificationId.getOrElse(() => ''),
                         smsCode: otp,
                       ));
                     },
                   ),
                   const SizedBox(height: AppSize.s20), // Add spacing
                 ],
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          context.read<AuthBloc>().add(AuthEvent.phoneLoginRequested(phoneNumber: phoneController.text));
                          },
                        child: Text(AppStrings.loginTitle,
                            style: context.textTheme.titleMedium),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                ColorManager.textfieldColor)),
                      )),
                  const SizedBox(height: AppSize.s64),
                   Center(
                     child: Text(
                      AppStrings.signinWithTitle,
                      style: context.textTheme.titleMedium
                     ),
                   ),
                               SizedBox(height: AppSize.s20,),
                               Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      socialLoginButton(image: ImageAssets.googleLogo, onTap: () { context.read<AuthBloc>().add(const AuthEvent.socialMediaLogin(SocialMediaType.Google)); }),
                      socialLoginButton(image: ImageAssets.facebookLogo, onTap: () { context.read<AuthBloc>().add(const AuthEvent.socialMediaLogin(SocialMediaType.Facebook)); }),
                      socialLoginButton(image: ImageAssets.appleLogo, onTap: () { context.read<AuthBloc>().add(const AuthEvent.socialMediaLogin(SocialMediaType.Apple)); })
                    ],
                  )
                             ],
                           ),
               );
            },
          ),
          ),
                ),
              ),
        ));
  }
}
