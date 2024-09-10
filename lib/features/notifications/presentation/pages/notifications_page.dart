import 'package:flutter/material.dart';
import 'package:gelirx/app/extensions/context.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'NotificationsPage',
          style: context.textTheme.displayLarge,
        ),
      ),
    );
  }
}
