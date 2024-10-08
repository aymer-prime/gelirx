import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_callkit_incoming/entities/android_params.dart';
import 'package:flutter_callkit_incoming/entities/call_event.dart';
import 'package:flutter_callkit_incoming/entities/call_kit_params.dart';
import 'package:flutter_callkit_incoming/entities/entities.dart';
import 'package:flutter_callkit_incoming/flutter_callkit_incoming.dart';
import 'package:gelirx/app/injector/injection.dart';
import 'package:gelirx/app/utils/app_constants.dart';
import 'package:gelirx/app/view/app.dart';
import 'package:loggy/loggy.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/v4.dart';
import 'app/local_services/notifiaction_handler.dart';
import 'app/navigation/app_router.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  var id = UuidV4().generate();
  var params = CallKitParams(
      id: id,
      appName: "Gelirx",
      duration: 30000,
      nameCaller: "service name",
      textAccept: "take",
      textDecline: "decline",
      android: AndroidParams(
        isCustomNotification:
        true, // Enables custom notification layout for Android
        isShowLogo: true, // Show app logo in notification
        ringtonePath: "ringtone_default", // Custom ringtone for Android
        backgroundColor: "#44498D", // Background color for the notification
        backgroundUrl:
        "https://example.com/background.jpg", // URL for background image
        actionColor: "#4CAF50", // Color for action buttons
        incomingCallNotificationChannelName: "Incoming Call",
      ),
      ios: IOSParams(iconName: 'CallKitLogo',
          handleType: 'generic',
          supportsVideo: true,
          maximumCallGroups: 2,
          maximumCallsPerCallGroup: 1,
          audioSessionMode: 'default',
          audioSessionActive: true,
          audioSessionPreferredSampleRate: 44100.0,
          audioSessionPreferredIOBufferDuration: 0.005,
          supportsDTMF: true,
          supportsHolding: true,
          supportsGrouping: false,
          supportsUngrouping: false,
          ringtonePath: 'system_ringtone_default')
  );
//  await FlutterCallkitIncoming.requestFullIntentPermission();
  FlutterCallkitIncoming.showCallkitIncoming(params);

  String? navigateTo = message.data[Constants.navigateToKey];
  if (navigateTo != null) {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(Constants.navigateToKey, navigateTo);
  }
  FlutterCallkitIncoming.onEvent.listen((event) async {
    if (event!.event == Event.actionCallAccept) {
      String? navigateTo = message.data[Constants.navigateToKey];
      if (navigateTo != null && navigateTo == MasterDashboardRoute.name) {
        String? navigateTo = message.data[Constants.navigateToKey];
        if (navigateTo != null) {
          final sharedPreferences = await SharedPreferences.getInstance();
          await sharedPreferences.setString(
              Constants.navigateToKey, navigateTo);
        }
        getIt<AppRouter>().push(MasterDashboardRoute());
        Future.delayed(Duration(seconds: 5),() =>  FlutterCallkitIncoming.endAllCalls());

      }
    }
  });
}
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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

  final notificationHandler = getIt<NotificationHandler>();
  notificationHandler.listenToNotification();

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