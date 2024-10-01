import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/injector/injection.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/app_constants.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/auth/presentation/bloc/auth_status/auth_status_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthStatusBloc, AuthStatusState>(
      listener: (context, state) {
        final showOnboarding =
            getIt<SharedPreferences>().getBool(Constants.showOnboarding) ??
                true;
        state.map(
          initialState: (_) {},
          authenticated: (_) {
            Timer(
              const Duration(seconds: 1),
              () => showOnboarding
                  ? context.router.replace(OnboardingRoute())
                  : context.router.replace(const AlternateMainRoute()),
            );
          },
          unAuthenticated: (_) => Timer(
            const Duration(seconds: 1),
            () => showOnboarding
                ? context.router.replace(OnboardingRoute())
                : context.router.replace(const AlternateMainRoute()),
          ),
        );
      },
      child: _PageWidget(),
    );
  }
}

class _PageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.themeData.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(ImageAssets.logoWhite),
            const SizedBox(height: AppSize.s8),
            Text(
              AppStrings.splashTitle1,
              style: context.textTheme.displayLarge!.copyWith(
                color: ColorManager.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
