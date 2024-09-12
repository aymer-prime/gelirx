import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gelirx/app/injector/injection.dart';
import 'package:gelirx/app/view/app.dart';
import 'package:gelirx/features/home/presentation/bloc/home_bloc.dart';
import 'package:loggy/loggy.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/auth/presentation/bloc/auth_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  _initLoggy();
  //_initGoogleFonts();
  final sharedPreferences = await SharedPreferences.getInstance();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  configureDependencies(sharedPreferences);
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<HomeBloc>()
            ..add(
              const HomeEvent.getCurrentPosition(),
            )
            ..add(
              const HomeEvent.getCategories(),
            ),
        ),
      ],
      child: const App(),
    ),
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