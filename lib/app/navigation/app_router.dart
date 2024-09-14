import 'package:auto_route/auto_route.dart';
import 'package:flutter/Material.dart';
import 'package:gelirx/features/auth/presentation/pages/master_verification_page.dart';
import 'package:gelirx/features/home/presentation/pages/services_page.dart';
import 'package:gelirx/features/booking/presentation/pages/booking_page.dart';
import 'package:gelirx/features/home/presentation/pages/home_page.dart';
import 'package:gelirx/features/auth/presentation/pages/auth_page.dart';
import 'package:gelirx/features/main/presentation/page/main_page.dart';
import 'package:gelirx/features/onboarding/presentation/onboarding_page.dart';
import 'package:gelirx/features/splash/splash_screen.dart';

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
          page: OnboardingRoute.page,
        ),
        AutoRoute(
          page: AuthRoute.page,
        ),
        AutoRoute(
          page: MasterVerificationRoute.page,
        ),
      ];
}
