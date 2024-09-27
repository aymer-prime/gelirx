import 'package:auto_route/auto_route.dart';
import 'package:flutter/Material.dart';
import 'package:gelirx/features/auth/presentation/pages/auth_pageview_pages/otp_page.dart';
import 'package:gelirx/features/auth/presentation/pages/master_info/master_pic_page.dart';
import 'package:gelirx/features/auth/presentation/pages/master_info/master_skills_page.dart';
import 'package:gelirx/features/auth/presentation/pages/master_info/master_form_page.dart';
import 'package:gelirx/features/auth/presentation/pages/master_info/master_info_wrapper.dart';
import 'package:gelirx/features/auth/presentation/pages/user_info/user_info_page.dart';
import 'package:gelirx/features/home/presentation/pages/home_page_old.dart';
import 'package:gelirx/features/home/presentation/pages/services_page.dart';
import 'package:gelirx/features/booking/presentation/pages/booking_page.dart';
import 'package:gelirx/features/home/presentation/pages/home_page.dart';
import 'package:gelirx/features/auth/presentation/pages/auth_page.dart';
import 'package:gelirx/features/main/presentation/page/alternate_main_page.dart';
import 'package:gelirx/features/main/presentation/page/main_page.dart';
import 'package:gelirx/features/main/presentation/page/master_main_page.dart';
import 'package:gelirx/features/onboarding/presentation/onboarding_page.dart';
import 'package:gelirx/features/splash/splash_screen.dart';

import '../../features/master_dashboard/presentation/pages/master_dashboard_page.dart';
import '../../features/navigation/presentation/pages/navigation_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
        ),
        AutoRoute(
          page: OnboardingRoute.page,
        ),
        AutoRoute(
          page: MainRoute.page,
        ),
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
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
        AutoRoute(
          page: AlternateMainRoute.page,
        ),
        AutoRoute(
          page: MasterDashboardRoute.page,
        ),
        AutoRoute(
          page: UserInfoRoute.page,
        ),
        AutoRoute(
          page: OtpRoute.page,
        ),
      ];
}
