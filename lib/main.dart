import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:gelirx/app/injector/injection.dart';
import 'package:gelirx/app/utils/app_constants.dart';
import 'package:gelirx/app/view/app.dart';
import 'package:loggy/loggy.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

import 'app/local_services/notifiaction_handler.dart';
import 'app/navigation/app_router.dart';


@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();

  NotificationService().showNotification(
    1,
    'main_channel',
    'New Service',
    'You Have new service open Gelrix and check it',
  );
}
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationService().initAwesomeNotification();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
 // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  _initLoggy();
  //_initGoogleFonts();
  final sharedPreferences = await SharedPreferences.getInstance();
  configureDependencies(sharedPreferences);

// Check for stored navigation key in case of app cold start
  _checkForStoredNavigation(sharedPreferences);

  // final notificationHandler = getIt<NotificationHandler>();
  // notificationHandler.listenToNotification();

  runApp(
    const App(),
  );
}



void _checkForStoredNavigation(SharedPreferences sharedPreferences) async {
  String? navigateTo = sharedPreferences.getString(Constants.navigateToKey);

  if (navigateTo != null) {
    sharedPreferences.remove(Constants.navigateToKey);
    final appRouter = getIt<AppRouter>();

    if (navigateTo == MasterDashboardRoute.name) {
      appRouter.push(MasterDashboardRoute());
    }
  }
}

void _initLoggy() {
  Loggy.initLoggy(
    logOptions: const LogOptions(
      LogLevel.all,
      stackTraceLevel: LogLevel.warning,
    ),
    logPrinter: const PrettyPrinter(),
  );
}

// void _initGoogleFonts() {
//   GoogleFonts.config.allowRuntimeFetching = false;

//   LicenseRegistry.addLicense(() async* {
//     final license = await rootBundle.loadString('google_fonts/OFL.txt');
//     yield LicenseEntryWithLineBreaks(['google_fonts'], license);
//   });
// }