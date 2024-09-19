
import 'package:auto_route/auto_route.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/Material.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class NavigationPage extends StatefulWidget {
  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 1,
            child: Center(
              child: ElevatedButton(onPressed: () async {
              String googleMapsUrl =
                  'https://www.google.com/maps/dir/?api=1&destination=25.197220572496263,55.27435329377886&travelmode=driving';
              if (await canLaunch(googleMapsUrl)) {
                var fcmToken = await FirebaseMessaging.instance.getToken();
                await launch(googleMapsUrl);
              } else {
                throw 'Could not launch Google Maps';
              }

            }, child: Text("jhbfklwjsbvjksbv kbvk"),),)

          ),
        ],
      ),
    );
  }

}