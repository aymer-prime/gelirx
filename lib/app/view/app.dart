import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gelirx/app/injector/injection.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/theme_manager.dart';
import 'package:gelirx/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:gelirx/features/auth/presentation/bloc/auth_status/auth_status_bloc.dart';
import 'package:gelirx/features/favorite/presentation/bloc/favorite_bloc.dart';
import 'package:gelirx/features/home/presentation/bloc/home_bloc.dart';
import 'package:gelirx/features/messages/presentation/bloc/chat_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/app_constants.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      // App is back to foreground
      _checkForStoredNavigation();
    }
  }

  void _checkForStoredNavigation() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    String? navigateTo = sharedPreferences.getString(Constants.navigateToKey);

    if (navigateTo != null) {
      sharedPreferences.remove(Constants.navigateToKey);
      final appRouter = getIt<AppRouter>();
      if (navigateTo == MasterDashboardRoute.name) {
        appRouter.push(MasterDashboardRoute());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (_) => getIt<HomeBloc>()
            ..add(
              const HomeEvent.getCurrentPosition(),
            )
            ..add(
              const HomeEvent.getCategories(),
            ),
        ),
        BlocProvider<AuthBloc>(
          create: (_) => getIt<AuthBloc>(),
        ),
        BlocProvider<AuthStatusBloc>(
          create: (_) => getIt<AuthStatusBloc>()
            ..add(
              const AuthStatusEvent.authCheckRequested(),
            ),
        ),
        BlocProvider<ChatBloc>(
          create: (_) => getIt<ChatBloc>()..add(const ChatEvent.fetchChats()),
        ),
        BlocProvider<FavoriteBloc>(
          create: (context) {
            var userEntity = context.read<AuthStatusBloc>().state.maybeMap(
                  orElse: () => null,
                  authenticated: (userEntity) => userEntity.user,
                );
            return getIt<FavoriteBloc>()
              ..add(FavoriteEvent.getFavoriteMasters(userEntity));
          },
        ),
      ],
      child: const _Starter(),
    );
  }
}

class _Starter extends StatelessWidget {
  const _Starter();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      useInheritedMediaQuery: true,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: getIt<AppRouter>().config(),
          theme: getApplicationTheme(),
        );
      },
    );
  }
}
