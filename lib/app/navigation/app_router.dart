import 'package:auto_route/auto_route.dart';
import 'package:gelirx/features/home/presentation/pages/alternate_home_page.dart';
import 'package:gelirx/features/home/presentation/pages/home_page.dart';
import 'package:gelirx/features/main/presentation/page/main_page.dart';
import 'package:gelirx/features/splash/splash_screen.dart';

import '../../features/login/presentation/pages/login_page.dart';

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
          page: LoginRoute.page,
        ),
        AutoRoute(
          page: AlternateHomeRoute.page,
        ),
      ];
}
