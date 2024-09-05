import 'package:auto_route/auto_route.dart';
import 'package:gelirx/features/home/persentation/pages/home_page.dart';
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
          page: HomeRoute.page,
        ),
      ];
}
