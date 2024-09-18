import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MasterHomePage extends StatelessWidget {
  const MasterHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Master Home Page'),
      ),
    );
  }
}
