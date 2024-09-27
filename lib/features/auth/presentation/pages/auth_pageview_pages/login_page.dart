import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:gelirx/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../../../../../app/utils/resources/font_manager.dart';
import '../../../../../../app/utils/resources/values_manager.dart';

class LoginPage extends StatelessWidget {
  final VoidCallback toPreviousPage;
  final VoidCallback onContinue;
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController otpController = TextEditingController();
  LoginPage({
    super.key,
    required this.onContinue,
    required this.toPreviousPage,
  });

  @override
  Widget build(BuildContext context) {
    final isMaster = context.read<AuthBloc>().state.isMaster;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SafeArea(
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return SizedBox(
              height: context.screenSize.height,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: toPreviousPage,
                          icon: const Icon(
                            Icons.arrow_back_ios_new_rounded,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(
                            AppPadding.p28,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //const SizedBox(height: AppSize.s40),
                              Center(
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                      ImageAssets.logoPrimary,
                                    ),
                                    const SizedBox(height: AppSize.s8),
                                    Text(
                                      AppStrings.splashTitle1,
                                      style: context.textTheme.displayLarge!
                                          .copyWith(
                                        color: ColorManager.darkPrimary,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: AppSize.s60),
                              Text(
                                isMaster
                                    ? AppStrings.masterSignIn
                                    : AppStrings.userSignIn,
                                style: context.textTheme.displayLarge!.copyWith(
                                  fontSize: FontSizeManager.s32,
                                ),
                              ),
                              const SizedBox(height: AppSize.s20),
                              IntlPhoneField(
                                decoration: InputDecoration(
                                  labelText: AppStrings.phoneNumberTitle,
                                  fillColor: ColorManager.textfieldNumFillColor,
                                ),
                                dropdownTextStyle:
                                    getMediumStyle(color: ColorManager.black),
                                initialCountryCode:
                                    AppStrings.countryCodeTitle2,
                                style: context.textTheme.headlineSmall,
                                pickerDialogStyle: PickerDialogStyle(
                                  countryNameStyle:
                                      getMediumStyle(color: ColorManager.black),
                                ),
                                onChanged: (phone) {
                                  phoneController.text = phone.completeNumber;
                                },
                              ),
                              // if (state.verificationId.isSome()) ...[
                              //   const SizedBox(height: AppSize.s10),
                              //   TextField(
                              //     controller: otpController,
                              //     decoration: InputDecoration(
                              //       labelText: AppStrings.enterOTPTitle,
                              //       border: OutlineInputBorder(
                              //         borderRadius: BorderRadius.circular(30.0),
                              //         borderSide: BorderSide.none,
                              //       ),
                              //       fillColor: ColorManager.textfieldFillColor,
                              //       filled: true,
                              //       suffixIcon: Padding(
                              //         padding:
                              //             const EdgeInsets.all(AppPadding.p8),
                              //         child: SizedBox(
                              //           height: AppSize.s32,
                              //           width: AppSize.s32,
                              //           child: ElevatedButton(
                              //               onPressed: () {
                              //                 context.read<AuthBloc>().add(
                              //                       AuthEvent.verifyPhoneNumber(
                              //                         verificationId: state
                              //                             .verificationId
                              //                             .getOrElse(() => ''),
                              //                         smsCode:
                              //                             otpController.text,
                              //                       ),
                              //                     );
                              //               },
                              //               child: const Icon(
                              //                 Icons.arrow_forward_ios_rounded,
                              //               )),
                              //         ),
                              //       ),
                              //     ),
                              //   ),
                              //   const SizedBox(height: AppSize.s20),
                              // ],
                              const SizedBox(height: AppSize.s2),
                              SizedBox(
                                width: double.infinity,
                                height: AppSize.s48,
                                child: ElevatedButton(
                                  onPressed: () {
                                    context.read<AuthBloc>().add(
                                          AuthEvent.phoneLoginRequested(
                                            phoneNumber: phoneController.text,
                                            onSuccess: () {
                                              if (context
                                                  .read<AuthBloc>()
                                                  .state
                                                  .verificationId
                                                  .isSome()) {
                                                onContinue();
                                              }
                                            },
                                          ),
                                        );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        ColorManager.textfieldColor,
                                    elevation: 0.0,
                                  ),
                                  child: Text(
                                    AppStrings.loginTitle,
                                    style: context.textTheme.headlineSmall,
                                  ),
                                ),
                              ),
                              if (!isMaster)
                                Column(
                                  children: [
                                    // Center(
                                    //   child: Text(
                                    //     AppStrings.signInWithTitle,
                                    //     style: context.textTheme.headlineSmall,
                                    //   ),
                                    // ),
                                    // const SizedBox(height: AppSize.s20),
                                    // Row(
                                    //   mainAxisAlignment:
                                    //       MainAxisAlignment.spaceEvenly,
                                    //   children: [
                                    //     socialLoginButton(
                                    //         image: ImageAssets.googleLogo,
                                    //         onTap: () {
                                    //           context.read<AuthBloc>().add(
                                    //               const AuthEvent.socialMediaLogin(
                                    //                   SocialMediaType.Google));
                                    //         }),
                                    //     socialLoginButton(
                                    //         image: ImageAssets.facebookLogo,
                                    //         onTap: () {
                                    //           context.read<AuthBloc>().add(
                                    //               const AuthEvent.socialMediaLogin(
                                    //                   SocialMediaType.Facebook));
                                    //         }),
                                    //     socialLoginButton(
                                    //         image: ImageAssets.appleLogo,
                                    //         onTap: () {
                                    //           context.read<AuthBloc>().add(
                                    //               const AuthEvent.socialMediaLogin(
                                    //                   SocialMediaType.Apple));
                                    //         })
                                    //   ],
                                    // ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: AppPadding.p16),
                                      child: SizedBox(
                                        height: AppSize.s48,
                                        width: double.infinity,
                                        child: IntrinsicWidth(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Divider(
                                                  color: ColorManager
                                                      .textTitleColor,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal:
                                                            AppPadding.p8),
                                                child: Text(
                                                  'OR',
                                                  style: context
                                                      .textTheme.labelLarge,
                                                ),
                                              ),
                                              Expanded(
                                                child: Divider(
                                                  color: ColorManager
                                                      .outlineButtonBorderColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: double.infinity,
                                      height: AppSize.s48,
                                      child: OutlinedButton(
                                        onPressed: () {
                                          context.router.replace(
                                              const AlternateMainRoute());
                                        },
                                        style: OutlinedButton.styleFrom(
                                          backgroundColor:
                                              ColorManager.textfieldFillColor,
                                          side: BorderSide(
                                            color: ColorManager
                                                .textfieldBorderColor,
                                            width: 1.5,
                                          ),
                                        ),
                                        child: Text(
                                          AppStrings.continueAsGuest,
                                          style:
                                              context.textTheme.headlineSmall,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: AppSize.s200,
                    ),
                    const SizedBox(
                      child: Text(
                        'Bu uygulamayı kullanarak, Genel Kullanım Koşullarını, Kişisel Verileri Koruma Kanununu ve Gizlilik Politikasını kabul etmiş olursunuz.',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
