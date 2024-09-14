import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gelirx/app/injector/injection.dart';
import 'package:gelirx/app/view/app.dart';
import 'package:gelirx/features/auth/domain/usecases/sign_in_with_social_media.dart';
import 'package:gelirx/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:loggy/loggy.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  Firebase.initializeApp();
  _initLoggy();
  //_initGoogleFonts();
  final sharedPreferences = await SharedPreferences.getInstance();
  configureDependencies(sharedPreferences);
  runApp(
    const App(),
  );
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