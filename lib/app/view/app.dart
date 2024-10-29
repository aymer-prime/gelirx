import 'package:awesome_notifications/awesome_notifications.dart';
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
import 'package:gelirx/features/profile/presentation/bloc/profile_bloc.dart';
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
    AwesomeNotifications().setListeners(
        onActionReceivedMethod:         NotificationController.onActionReceivedMethod,
        onNotificationCreatedMethod:    NotificationController.onNotificationCreatedMethod,
        onNotificationDisplayedMethod:  NotificationController.onNotificationDisplayedMethod,
        onDismissActionReceivedMethod:  NotificationController.onDismissActionReceivedMethod
    );

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
        BlocProvider<ProfileBloc>(
          create: (_) => getIt<ProfileBloc>()
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


@pragma('vm:entry-point')
class NotificationController {
  @pragma('vm:entry-point')
  static Future<void> onNotificationCreatedMethod(ReceivedNotification receivedNotification) async {
    debugPrint('=== NOTIFICATION CREATED ===');
    debugPrint('id: ${receivedNotification.id}');
    debugPrint('title: ${receivedNotification.title}');
    debugPrint('body: ${receivedNotification.body}');
    debugPrint('payload: ${receivedNotification.payload}');
  }

  @pragma('vm:entry-point')
  static Future<void> onNotificationDisplayedMethod(ReceivedNotification receivedNotification) async {
    debugPrint('=== NOTIFICATION DISPLAYED ===');
    debugPrint('id: ${receivedNotification.id}');
    debugPrint('title: ${receivedNotification.title}');
    debugPrint('body: ${receivedNotification.body}');
    debugPrint('payload: ${receivedNotification.payload}');
  }

  @pragma('vm:entry-point')
  static Future<void> onDismissActionReceivedMethod(ReceivedAction receivedAction) async {
    debugPrint('=== NOTIFICATION DISMISSED ===');
    debugPrint('id: ${receivedAction.id}');
    debugPrint('buttonKeyPressed: ${receivedAction.buttonKeyPressed}');
  }

  @pragma('vm:entry-point')
  static Future<void> onActionReceivedMethod(ReceivedAction receivedAction) async {
    debugPrint('=== ACTION RECEIVED ===');
    debugPrint('id: ${receivedAction.id}');
    debugPrint('buttonKeyPressed: ${receivedAction.buttonKeyPressed}');

    try {
      if (receivedAction.buttonKeyPressed == "SHOW") {
        debugPrint("Call accepted - Navigating to dashboard");
        // Make sure to run navigation on the main thread
        await Future.delayed(Duration.zero, () async {
          final appRouter = getIt<AppRouter>();
          await appRouter.push(MasterDashboardRoute());
        });

        debugPrint("Navigation completed");
      }
    } catch (e, stackTrace) {
      debugPrint('Error in onActionReceivedMethod: $e');
      debugPrint('Stack trace: $stackTrace');
    }
  }
}
