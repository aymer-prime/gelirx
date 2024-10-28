import 'package:auto_route/auto_route.dart';
import 'package:flutter/Material.dart';
import 'package:gelirx/features/auth/presentation/pages/auth_pageview_pages/otp_page.dart';
import 'package:gelirx/features/auth/presentation/pages/master_info/master_pic_page.dart';
import 'package:gelirx/features/auth/presentation/pages/master_info/master_skills_page.dart';
import 'package:gelirx/features/auth/presentation/pages/master_info/master_form_page.dart';
import 'package:gelirx/features/auth/presentation/pages/master_info/master_info_wrapper.dart';
import 'package:gelirx/features/auth/presentation/pages/user_info/user_info_page.dart';
import 'package:gelirx/features/booking/domain/entities/booking_entity.dart';
import 'package:gelirx/features/booking/presentation/pages/service_details_page.dart';
import 'package:gelirx/features/home/domain/entities/master.dart';
import 'package:gelirx/features/order_details/presentation/pages/booking_details_page.dart';
import 'package:gelirx/features/booking/presentation/pages/booking_page.dart';
import 'package:gelirx/features/home/presentation/pages/old/home_page.dart';
import 'package:gelirx/features/auth/presentation/pages/auth_page.dart';
import 'package:gelirx/features/main/presentation/page/alternate_main_page.dart';
import 'package:gelirx/features/main/presentation/page/old/main_page.dart';
import 'package:gelirx/features/main/presentation/page/master_main_page.dart';
import 'package:gelirx/features/master_dashboard/presentation/pages/master_active_service_page.dart';
import 'package:gelirx/features/messages/presentation/pages/chat_page.dart';
import 'package:gelirx/features/onboarding/presentation/onboarding_page.dart';
import 'package:gelirx/features/order_details/presentation/pages/order_details_page.dart';
import 'package:gelirx/features/splash/splash_screen.dart';

import '../../features/master/presentation/page/master_page.dart';
import '../../features/master_dashboard/presentation/pages/master_dashboard_page.dart';
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
        AutoRoute(
          page: OrderDetailsRoute.page,
        ),
        AutoRoute(
          page: BookingDetailsRoute.page,
        ),
        AutoRoute(
          page: BookingHistoryRoute.page,
        ),
        AutoRoute(
          page: MasterRoute.page,
        ),
        AutoRoute(
          page: ChatRoute.page,
        ),
        AutoRoute(
          page: MasterActiveServiceRoute.page,
        ),
        AutoRoute(
          page: ServiceDetailsRoute.page,
        )
      ];
}
