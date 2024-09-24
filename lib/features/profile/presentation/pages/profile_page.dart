import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
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
        listener: (context, state) {},
        child: Padding(
          padding: const EdgeInsets.all(
            AppPadding.p16,
          ),
          child: Column(
            children: [
              const CardLabelWidget(label: 'Profile'),
              const SizedBox(height: AppSize.s16),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorManager.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(
                      AppPadding.p16,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: AppSize.s40,
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
                            const SizedBox(width: AppSize.s8),
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
                        const SizedBox(height: AppSize.s16),
                        const CardLabelWidget(label: 'Phone number'),
                        const SizedBox(height: AppSize.s16),
                        Container(
                          //height: AppSize.s60,
                          width: double.infinity,
                          padding: const EdgeInsets.all(AppPadding.p16),
                          decoration: BoxDecoration(
                            color: ColorManager.textfieldFillColor,
                            borderRadius: BorderRadius.circular(AppSize.s12),
                            border: Border.all(
                              color: ColorManager.textfieldBorderColor,
                            ),
                          ),
                          child: const Text('+971502549627'),
                        ),
                        const SizedBox(height: AppSize.s16),
                        const CardLabelWidget(label: 'Birthday'),
                        const SizedBox(height: AppSize.s16),
                        Container(
                          //height: AppSize.s60,
                          width: double.infinity,
                          padding: const EdgeInsets.all(AppPadding.p16),
                          decoration: BoxDecoration(
                            color: ColorManager.textfieldFillColor,
                            borderRadius: BorderRadius.circular(AppSize.s12),
                            border: Border.all(
                              color: ColorManager.textfieldBorderColor,
                            ),
                          ),
                          child: const Text('1956'),
                        ),
                        const SizedBox(height: AppSize.s16),
                        const CardLabelWidget(label: 'E-mail'),
                        const SizedBox(height: AppSize.s16),
                        Container(
                          //height: AppSize.s60,
                          width: double.infinity,
                          padding: const EdgeInsets.all(AppPadding.p16),
                          decoration: BoxDecoration(
                            color: ColorManager.textfieldFillColor,
                            borderRadius: BorderRadius.circular(AppSize.s12),
                            border: Border.all(
                              color: ColorManager.textfieldBorderColor,
                            ),
                          ),
                          child: const Text('abc@outlook.com'),
                        ),
                        const SizedBox(height: AppSize.s16),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              context.read<AuthStatusBloc>().add(
                                    const AuthStatusEvent.signedOut(),
                                  );
                            },
                            child: const Text(
                              AppStrings.logOut,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
