import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_callkit_incoming/entities/android_params.dart';
import 'package:flutter_callkit_incoming/entities/call_event.dart';
import 'package:flutter_callkit_incoming/entities/call_kit_params.dart';
import 'package:flutter_callkit_incoming/entities/ios_params.dart';
import 'package:flutter_callkit_incoming/flutter_callkit_incoming.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/v4.dart';
import '../injector/injection.dart';
import '../navigation/app_router.dart';
import '../utils/app_constants.dart';

@injectable
class NotificationHandler {
  final FirebaseMessaging messaging;

  NotificationHandler(this.messaging);

  Future<void> listenToNotification() async {
    var push =  await FlutterCallkitIncoming.getDevicePushTokenVoIP();
    print(" push = ${push}");
    //await FlutterCallkitIncoming.requestFullIntentPermission();
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      _handleIncomingCall(message);
    });
  }

  void _handleIncomingCall(RemoteMessage message) {
    // Show the call
    var id = Uuid().v4();
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
          backgroundColor: "#E30A17", // Background color for the notification
          backgroundUrl:
          "https://example.com/background.jpg", // URL for background image
          actionColor: "#4CAF50", // Color for action buttons
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

    FlutterCallkitIncoming.showCallkitIncoming(params);

    // Listen for the call accept event
    FlutterCallkitIncoming.onEvent.listen((event) async {
      _navigateToDashboard(message);
      if (event!.event == Event.actionCallEnded) {
        // Navigate to the dashboard if needed

      }
    });
  }

  void _navigateToDashboard(RemoteMessage message) async {
    String? navigateTo = message.data[Constants.navigateToKey];
    if (navigateTo != null && navigateTo == MasterDashboardRoute.name) {
      final sharedPreferences = await SharedPreferences.getInstance();
      sharedPreferences.setString(Constants.navigateToKey, navigateTo);

      // Navigate to the master dashboard
      final appRouter = getIt<AppRouter>();
      appRouter.push(MasterDashboardRoute());
    }
  }
}

