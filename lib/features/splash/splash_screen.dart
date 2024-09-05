import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gelirx/app/extentions/context.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    var timer = Timer(Duration(seconds: 2), () {
      print('timer run trigger');
      context.router.replace(const HomeRoute());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _PageWidget();
  }
}

class _PageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.themeData.primaryColorDark,
      body: Center(
        child: Text(AppStrings.spalshTitle1),
        //child: SvgPicture.asset(ImageAssets.),
      ),
    );
  }
}
