import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_callkit_incoming/entities/call_kit_params.dart';
import 'package:flutter_callkit_incoming/flutter_callkit_incoming.dart';
import 'package:injectable/injectable.dart';

@injectable
class NotificationHandler {
  final FirebaseMessaging messaging;
  NotificationHandler(this.messaging);

  void listenToNotification() {
    _requestPermissions();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      _showIncomingCall(message);
    });
  }

  void _requestPermissions() async {
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );
    print('User granted permission: ${settings.authorizationStatus}');
  }

  void _showIncomingCall(RemoteMessage message) {
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
}
