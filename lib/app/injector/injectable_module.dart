import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:gelirx/app/injector/injection.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/network/dio_client.dart';

import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

@immutable
@module
abstract class InjectableModules {
  @lazySingleton
  AppRouter get appRouter => AppRouter();

  @lazySingleton
  InternetConnectionChecker get internetConnectionChecker =>
      InternetConnectionChecker();

  @lazySingleton
  Dio get dio => Dio();
}
