import 'package:auto_route/auto_route.dart';
import 'package:flutter/Material.dart';
import 'package:gelirx/features/auth/presentation/pages/master_info/master_pic_page.dart';
import 'package:gelirx/features/auth/presentation/pages/master_info/master_skills_page.dart';
import 'package:gelirx/features/auth/presentation/pages/master_info/master_form_page.dart';
import 'package:gelirx/features/auth/presentation/pages/master_info/master_info_wrapper.dart';
import 'package:gelirx/features/home/presentation/pages/master/master_home_page.dart';
import 'package:gelirx/features/home/presentation/pages/services_page.dart';
import 'package:gelirx/features/booking/presentation/pages/booking_page.dart';
import 'package:gelirx/features/home/presentation/pages/home_page.dart';
import 'package:gelirx/features/auth/presentation/pages/auth_page.dart';
import 'package:gelirx/features/main/presentation/page/main_page.dart';
import 'package:gelirx/features/main/presentation/page/master_main_page.dart';
import 'package:gelirx/features/onboarding/presentation/onboarding_page.dart';
import 'package:gelirx/features/splash/splash_screen.dart';

import '../../features/navigation/presentation/pages/navigation_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: OnboardingRoute.page,
        ),
        AutoRoute(
          page: MainRoute.page,
        ),
        AutoRoute(
          page: HomeRoute.page,
        ),
        AutoRoute(
          page: ServicesRoute.page,
        ),
        AutoRoute(
          page: BookingRoute.page,
        ),
        AutoRoute(
          page: AuthRoute.page,
        ),
        AutoRoute(
          page: MasterHomeRoute.page,
        ),
        AutoRoute(
          page: MasterInfoWrapperRoute.page,
          children: [
            AutoRoute(page: MasterFormRoute.page, initial: true),
            AutoRoute(
              page: MasterPicRoute.page,
            ),
            AutoRoute(
              page: MasterSkillsRoute.page,
            ),
          ],
        ),
        AutoRoute(
          page: NavigationRoute.page,
        ),
        AutoRoute(
          page: MasterMainRoute.page,
        ),
      ];
}
