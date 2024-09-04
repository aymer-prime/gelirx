import 'package:flutter/material.dart';
import 'package:gelirx/app/injector/injection.dart';
import 'package:gelirx/app/view/app.dart';
import 'package:loggy/loggy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  _initLoggy();
  //_initGoogleFonts();
  configureDependencies();
  runApp(const App());
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