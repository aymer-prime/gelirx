import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/Material.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../injector/injection.dart';
import '../navigation/app_router.dart';
import '../utils/app_constants.dart';

@injectable
class NotificationHandlerManager {
  final FirebaseMessaging messaging;

  NotificationHandlerManager(this.messaging);

  Future<void> listenToNotification() async {

    await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: true,
      criticalAlert: true,
      provisional: false,
      sound: true,
    );
    await messaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    await AwesomeNotifications().requestPermissionToSendNotifications(
        permissions: [
          NotificationPermission.Alert,
          NotificationPermission.Sound,
          NotificationPermission.Badge,
          NotificationPermission.Vibration,
          NotificationPermission.Light,
          NotificationPermission.FullScreenIntent,
          NotificationPermission.CriticalAlert,
        ],
    );

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      _handleIncomingCall(message);
    });
  }

  void _handleIncomingCall(RemoteMessage message) {
    final data = message.data;
    final title = data['title'] ?? 'New Service';
    final body = data['body'] ?? 'You Have new service open Gelrix and check it';

    NotificationService().showNotification(
      DateTime.now().millisecond,  // Generate unique ID
      'basic_channel',
      title,
      body,
    );
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

class NotificationService {
  static final NotificationService _notificationService = NotificationService._internal();

  factory NotificationService() {
    return _notificationService;
  }
  NotificationService._internal();

  Future<void> initAwesomeNotification() async {
    try {
      await AwesomeNotifications().initialize(
          null,
          [
            NotificationChannel(
              channelKey: 'high_importance_channel',
              channelName: 'Alerts',
              channelDescription: 'High priority notifications',
              enableLights: true,
              criticalAlerts: true,
              importance: NotificationImportance.Max,
              defaultRingtoneType: DefaultRingtoneType.Notification,
              soundSource: 'resource://raw/res_ring',
              playSound: true,
              locked: true,
              defaultPrivacy: NotificationPrivacy.Public,
              vibrationPattern: highVibrationPattern,
              enableVibration: true,
              onlyAlertOnce: false,
              channelShowBadge: true,
            )
          ],
          debug: true,
      );

      await AwesomeNotifications().requestPermissionToSendNotifications(
          permissions: [
            NotificationPermission.Alert,
            NotificationPermission.Sound,
            NotificationPermission.Badge,
            NotificationPermission.Vibration,
            NotificationPermission.Light,
            NotificationPermission.FullScreenIntent,
            NotificationPermission.CriticalAlert,
          ]
      );

      debugPrint('Notifications initialized successfully');
    } catch (e) {
      debugPrint('Error initializing notifications: $e');
    }
  }

  Future<void> showNotification(int id, String channelKey, String title, String body) async {
    try {
      await AwesomeNotifications().createNotification(
          content: NotificationContent(
            id: id,
            channelKey: 'high_importance_channel',
            title: title,
            body: body,
            customSound: 'resource://raw/res_ring',
            category: NotificationCategory.Alarm,
            wakeUpScreen: true,
            fullScreenIntent: true,
            criticalAlert: true,
            displayOnForeground: true,
            displayOnBackground: true,
            autoDismissible: false,
            locked: true,
            roundedBigPicture: true,
            backgroundColor: Colors.red,
            notificationLayout: NotificationLayout.BigPicture,
          ),
          actionButtons: [
            NotificationActionButton(
              key: 'SHOW',
              label: 'Show',
              color: Colors.green,
              autoDismissible: true,
              enabled: true,
              actionType: ActionType.Default,
            ),
          ],
      );
      debugPrint('Notification created successfully');
    } catch (e) {
      debugPrint('Error creating notification: $e');
    }
  }

  Future<void> requestPermission() async {
    await AwesomeNotifications().isNotificationAllowed().then((allowed) async {
      if (!allowed) {
        await AwesomeNotifications().requestPermissionToSendNotifications(
          permissions: [
            NotificationPermission.Alert,
            NotificationPermission.Sound,
            NotificationPermission.Badge,
            NotificationPermission.Vibration,
            NotificationPermission.Light,
            NotificationPermission.FullScreenIntent,
            NotificationPermission.CriticalAlert,
          ],
        );
      }
    });
  }
}



