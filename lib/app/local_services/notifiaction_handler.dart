import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_callkit_incoming/entities/call_event.dart';
import 'package:flutter_callkit_incoming/entities/call_kit_params.dart';
import 'package:flutter_callkit_incoming/flutter_callkit_incoming.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../injector/injection.dart';
import '../navigation/app_router.dart';
import '../utils/app_constants.dart';

@injectable
class NotificationHandler {
  final FirebaseMessaging messaging;

  NotificationHandler(this.messaging);

  void listenToNotification() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      _handleIncomingCall(message);
    });
  }

  void _handleIncomingCall(RemoteMessage message) {
    // Show the call
    const params = CallKitParams(
      id: "1111",
      appName: "Gelirx",
      duration: 30000,
      nameCaller: "service name",
      textAccept: "take",
      textDecline: "decline",
    );

    FlutterCallkitIncoming.showCallkitIncoming(params);

    // Listen for the call accept event
    FlutterCallkitIncoming.onEvent.listen((event) async {
      if (event!.event == Event.actionCallAccept) {
        // Navigate to the dashboard if needed
        _navigateToDashboard(message);
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

