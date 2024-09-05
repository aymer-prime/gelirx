import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:gelirx/app/injector/injection.config.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies(SharedPreferences sharedPreferences) {
  getIt.registerSingleton<SharedPreferences>(sharedPreferences);
  getIt.init();
}
