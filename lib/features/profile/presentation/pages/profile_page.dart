import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/auth/presentation/bloc/auth_status/auth_status_bloc.dart';
import 'package:gelirx/features/shared/widgets/card_label_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthStatusBloc, AuthStatusState>(
        listener: (context, state) {
          state.maybeMap(
            unAuthenticated: (_) {
              print('unauthenticated');
              context.router.replace(const AuthRoute());
            },
            orElse: () {},
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(
            AppPadding.p16,
          ),
          child: Column(
            children: [
              const CardLabelWidget(label: 'Profile'),
              const SizedBox(height: AppSize.s16),
              Container(
                padding: const EdgeInsets.all(
                  AppPadding.p16,
                ),
                decoration: BoxDecoration(
                  color: ColorManager.white,
                  borderRadius: BorderRadius.circular(AppSize.s8),
                ),
                child: Row(
                  children: [
                    Container(
                      width: AppSize.s56,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: ColorManager.darkPrimary,
                        ),
                      ),
                      child: Image.asset(
                        ImageAssets.masterIcon,
                      ),
                    ),
                    SizedBox(width: AppSize.s16.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Master Name',
                          style: context.textTheme.titleLarge,
                        ),
                        const SizedBox(width: AppSize.s8),
                        Row(
                          children: [
                            SvgPicture.asset(ImageAssets.star),
                            const SizedBox(width: AppSize.s4),
                            Text(
                              '4.8',
                              style: context.textTheme.labelMedium,
                            ),
                            const SizedBox(width: AppSize.s4),
                            Text(
                              '(87)',
                              style: context.textTheme.labelSmall,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: AppSize.s16.h),
              Container(
                padding: const EdgeInsets.all(
                  AppPadding.p16,
                ),
                decoration: BoxDecoration(
                  color: ColorManager.white,
                  borderRadius: BorderRadius.circular(AppSize.s8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Phone number',
                      style: context.textTheme.labelLarge!.copyWith(
                        fontSize: FontSizeManager.s15,
                      ),
                    ),
                    SizedBox(height: AppSize.s8.h),
                    Container(
                      //height: AppSize.s60,
                      width: double.infinity,
                      padding: const EdgeInsets.all(AppPadding.p16),
                      decoration: BoxDecoration(
                        color: ColorManager.textfieldNumFillColor,
                        borderRadius: BorderRadius.circular(AppSize.s12),
                      ),
                      child: Text('+971502549627',
                          style: context.textTheme.labelLarge),
                    ),
                    SizedBox(height: AppSize.s24.h),
                    Text(
                      'Birthday',
                      style: context.textTheme.labelLarge!.copyWith(
                        fontSize: FontSizeManager.s15,
                      ),
                    ),
                    SizedBox(height: AppSize.s8.h),
                    Container(
                      //height: AppSize.s60,
                      width: double.infinity,
                      padding: const EdgeInsets.all(AppPadding.p14),
                      decoration: BoxDecoration(
                        color: ColorManager.textfieldNumFillColor,
                        borderRadius: BorderRadius.circular(AppSize.s12),
                      ),
                      child: Text(
                        '1956',
                        style: context.textTheme.labelLarge,
                      ),
                    ),
                    SizedBox(height: AppSize.s24.h),
                    Text(
                      'E-mail',
                      style: context.textTheme.labelLarge!.copyWith(
                        fontSize: FontSizeManager.s15,
                      ),
                    ),
                    SizedBox(height: AppSize.s8.h),
                    Container(
                      //height: AppSize.s60,
                      width: double.infinity,
                      padding: const EdgeInsets.all(AppPadding.p16),
                      decoration: BoxDecoration(
                        color: ColorManager.textfieldNumFillColor,
                        borderRadius: BorderRadius.circular(AppSize.s12),
                      ),
                      child: Text(
                        'abc@outlook.com',
                        style: context.textTheme.labelLarge,
                      ),
                    ),
                    const SizedBox(height: AppSize.s16),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          context.read<AuthStatusBloc>().state.maybeMap(
                                orElse: () {},
                                authenticated: (value) {
                                  print('Authenticated');
                                },
                                unAuthenticated: (value) {
                                  print('Unauthenticated');
                                },
                              );
                          context.read<AuthStatusBloc>().add(
                                const AuthStatusEvent.signedOut(),
                              );
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: AppPadding.p20.w,
                            vertical: AppPadding.p12.h,
                          ),
                          child: const Text(
                            AppStrings.logOut,
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
      ),
    );
  }
}
