// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AuthPage]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AuthPage();
    },
  );
}

/// generated route for
/// [BookingPage]
class BookingRoute extends PageRouteInfo<void> {
  const BookingRoute({List<PageRouteInfo>? children})
      : super(
          BookingRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BookingPage();
    },
  );
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomePage();
    },
  );
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MainPage();
    },
  );
}

/// generated route for
/// [MasterFormPage]
class MasterFormRoute extends PageRouteInfo<void> {
  const MasterFormRoute({List<PageRouteInfo>? children})
      : super(
          MasterFormRoute.name,
          initialChildren: children,
        );

  static const String name = 'MasterFormRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MasterFormPage();
    },
  );
}

/// generated route for
/// [MasterHomePage]
class MasterHomeRoute extends PageRouteInfo<void> {
  const MasterHomeRoute({List<PageRouteInfo>? children})
      : super(
          MasterHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'MasterHomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MasterHomePage();
    },
  );
}

/// generated route for
/// [MasterInfoWrapperPage]
class MasterInfoWrapperRoute extends PageRouteInfo<void> {
  const MasterInfoWrapperRoute({List<PageRouteInfo>? children})
      : super(
          MasterInfoWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'MasterInfoWrapperRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MasterInfoWrapperPage();
    },
  );
}

/// generated route for
/// [MasterPicPage]
class MasterPicRoute extends PageRouteInfo<void> {
  const MasterPicRoute({List<PageRouteInfo>? children})
      : super(
          MasterPicRoute.name,
          initialChildren: children,
        );

  static const String name = 'MasterPicRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MasterPicPage();
    },
  );
}

/// generated route for
/// [MasterSkillsPage]
class MasterSkillsRoute extends PageRouteInfo<void> {
  const MasterSkillsRoute({List<PageRouteInfo>? children})
      : super(
          MasterSkillsRoute.name,
          initialChildren: children,
        );

  static const String name = 'MasterSkillsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MasterSkillsPage();
    },
  );
}

/// generated route for
/// [NavigationPage]
class NavigationRoute extends PageRouteInfo<void> {
  const NavigationRoute({List<PageRouteInfo>? children})
      : super(
          NavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavigationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return NavigationPage();
    },
  );
}

/// generated route for
/// [OnboardingPage]
class OnboardingRoute extends PageRouteInfo<OnboardingRouteArgs> {
  OnboardingRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          OnboardingRoute.name,
          args: OnboardingRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OnboardingRouteArgs>(
          orElse: () => const OnboardingRouteArgs());
      return OnboardingPage(key: args.key);
    },
  );
}

class OnboardingRouteArgs {
  const OnboardingRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'OnboardingRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ServicesPage]
class ServicesRoute extends PageRouteInfo<void> {
  const ServicesRoute({List<PageRouteInfo>? children})
      : super(
          ServicesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ServicesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ServicesPage();
    },
  );
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashPage();
    },
  );
}
