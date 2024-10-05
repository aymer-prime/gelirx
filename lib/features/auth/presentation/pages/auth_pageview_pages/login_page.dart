import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: AppSize.s48.h,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        }, //toPreviousPage,
                        icon: const Icon(
                          Icons.arrow_back_rounded,
                        ),
                      ),
                    ),
                    SizedBox(height: AppSize.s28.h),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppPadding.p20.w,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  ImageAssets.logoPrimary,
                                ),
                                const SizedBox(height: AppSize.s8),
                                Text(
                                  AppStrings.splashTitle1,
                                  style:
                                      context.textTheme.displayLarge!.copyWith(
                                    fontSize: FontSizeManager.s32,
                                    color: ColorManager.darkPrimary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: AppSize.s90.h),
                          Text(
                            'Welcome',
                            style: context.textTheme.displayLarge!.copyWith(
                              fontSize: FontSizeManager.s32,
                            ),
                          ),
                          SizedBox(height: AppSize.s24.h),
                          Text(
                            AppStrings.phoneNumberTitle,
                            style: context.textTheme.titleMedium!.copyWith(
                              fontSize: FontSizeManager.s15,
                              color: ColorManager.textTitleColor,
                              letterSpacing: FontSizeManager.s15 * -0.01,
                            ),
                          ),
                          SizedBox(height: AppSize.s8.h),
                          IntlPhoneField(
                            disableLengthCheck: true,
                            decoration: InputDecoration(
                              hintText: '5xxxxxxxxx',
                              hintStyle:
                                  context.textTheme.titleMedium!.copyWith(
                                color: ColorManager.textSubtitleColor,
                              ),
                              fillColor: ColorManager.textfieldNumFillColor,
                            ),
                            // dropdownTextStyle:
                            //     getMediumStyle(color: ColorManager.black),
                            initialCountryCode: AppStrings.countryCodeTitle2,
                            style: context.textTheme.headlineSmall,
                            // pickerDialogStyle: PickerDialogStyle(
                            //   countryNameStyle:
                            //       getMediumStyle(color: ColorManager.black),
                            // ),
                            onChanged: (phone) {
                              phoneController.text = phone.completeNumber;
                            },
                          ),
                          SizedBox(height: AppSize.s20.h),
                          SizedBox(
                            width: double.infinity,
                            height: AppSize.s48,
                            child: ElevatedButton(
                              onPressed: () {
                                FocusManager.instance.primaryFocus?.unfocus();
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
                                backgroundColor: ColorManager.textfieldColor,
                                elevation: 0.0,
                              ),
                              child: Text(
                                AppStrings.loginTitle,
                                style: context.textTheme.headlineSmall,
                              ),
                            ),
                          ),
                          SizedBox(height: AppSize.s194.h),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: AppPadding.p10.w,
                            ),
                            child: SizedBox(
                              child: Text(
                                'Bu uygulamayı kullanarak, Genel Kullanım Koşullarını, Kişisel Verileri Koruma Kanununu ve Gizlilik Politikasını kabul etmiş olursunuz.',
                                textAlign: TextAlign.center,
                                style: context.textTheme.labelSmall!.copyWith(
                                  color: Color(0xff535763),
                                ),
                              ),
                            ),
                          ),
                        ],
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
