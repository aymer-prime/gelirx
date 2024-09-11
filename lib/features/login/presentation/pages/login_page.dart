import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/navigation/app_router.dart';
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
        backgroundColor: ColorManager.white,
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p28),
              child: BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: AppSize.s80),
                            Center(
                              child: Image.asset(
                                ImageAssets.logo,
                                width: AppSize.s150,
                              ),
                            ),
                            const SizedBox(height: AppSize.s60),
                            Text(
                              AppStrings.loginTitle,
                              style: context.textTheme.displayLarge!.copyWith(
                                fontSize: FontSizeManager.s32,
                              ),
                            ),
                            const SizedBox(height: AppSize.s20),
                            IntlPhoneField(
                              decoration: const InputDecoration(
                                labelText: AppStrings.phoneNumberTitle,
                              ),
                              dropdownTextStyle:
                                  getMediumStyle(color: ColorManager.black),
                              initialCountryCode: AppStrings.countryCodeTitle,
                              style: context.textTheme.headlineSmall,
                              pickerDialogStyle: PickerDialogStyle(
                                countryNameStyle:
                                    getMediumStyle(color: ColorManager.black),
                              ),
                              onChanged: (phone) {
                                phoneController.text = phone.completeNumber;
                              },
                            ),
                            if (state.verificationId.isSome()) ...[
                              const SizedBox(
                                  height: AppSize.s20), // Add spacing
                              TextField(
                                controller: otpController,
                                decoration: InputDecoration(
                                  labelText: AppStrings.enterOTPTitle,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide.none,
                                  ),
                                  fillColor: ColorManager.textfieldFillColor,
                                  filled: true,
                                ),
                                onChanged: (otp) {
                                  context.read<AuthBloc>().add(
                                        AuthEvent.verifyPhoneNumber(
                                          verificationId: state.verificationId
                                              .getOrElse(() => ''),
                                          smsCode: otp,
                                        ),
                                      );
                                },
                              ),
                              const SizedBox(
                                  height: AppSize.s20), // Add spacing
                            ],
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  context.read<AuthBloc>().add(
                                        AuthEvent.phoneLoginRequested(
                                          phoneNumber: phoneController.text,
                                        ),
                                      );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: ColorManager.textfieldColor,
                                  elevation: 0.0,
                                ),
                                child: Text(
                                  AppStrings.loginTitle,
                                  style: context.textTheme.headlineSmall,
                                ),
                              ),
                            ),
                            const SizedBox(height: AppSize.s64),
                            Center(
                              child: Text(
                                AppStrings.signInWithTitle,
                                style: context.textTheme.headlineSmall,
                              ),
                            ),
                            const SizedBox(height: AppSize.s20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                socialLoginButton(
                                    image: ImageAssets.googleLogo,
                                    onTap: () {
                                      context.read<AuthBloc>().add(
                                          const AuthEvent.socialMediaLogin(
                                              SocialMediaType.Google));
                                    }),
                                socialLoginButton(
                                    image: ImageAssets.facebookLogo,
                                    onTap: () {
                                      context.read<AuthBloc>().add(
                                          const AuthEvent.socialMediaLogin(
                                              SocialMediaType.Facebook));
                                    }),
                                socialLoginButton(
                                    image: ImageAssets.appleLogo,
                                    onTap: () {
                                      context.read<AuthBloc>().add(
                                          const AuthEvent.socialMediaLogin(
                                              SocialMediaType.Apple));
                                    })
                              ],
                            ),
                          ],
                        ),
                      ),
                      //const SizedBox(height: AppSize.s64),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {
                            context.router.replace(const MainRoute());
                          },
                          style: OutlinedButton.styleFrom(
                            backgroundColor: ColorManager.textfieldFillColor,
                            side: BorderSide(
                              color: ColorManager.textfieldBorderColor,
                              width: 1.5,
                            ),
                          ),
                          child: Text(
                            AppStrings.continueAsGuest,
                            style: context.textTheme.headlineSmall,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ));
  }
}
