import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_callkit_incoming/entities/call_kit_params.dart';
import 'package:flutter_callkit_incoming/flutter_callkit_incoming.dart';
import 'package:gelirx/app/injector/injection.dart';
import 'package:gelirx/app/view/app.dart';
import 'package:loggy/loggy.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app/local_services/notifiaction_handler.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  await Firebase.initializeApp();
  _initLoggy();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  //_initGoogleFonts();
  final sharedPreferences = await SharedPreferences.getInstance();
  configureDependencies(sharedPreferences);
  final notificationHandler = getIt<NotificationHandler>();
  notificationHandler.listenToNotification();
  runApp(
    const App(),
  );
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print('Handling a background message: ${message.messageId}');

  // Handle the incoming call logic here
  final params = const CallKitParams(
    id: "1111",
    appName: "Gelirx",
    duration: 30000,
    nameCaller: "service name",
    textAccept: "take",
    textDecline: "decline",
  );
  FlutterCallkitIncoming.showCallkitIncoming(params);
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