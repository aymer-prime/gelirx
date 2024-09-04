// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i973;

import '../network/remote_service.dart' as _i464;
import 'injectable_module.dart' as _i109;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableModules = _$InjectableModules();
    gh.lazySingleton<_i973.InternetConnectionChecker>(
        () => injectableModules.internetConnectionChecker);
    gh.lazySingleton<_i361.Dio>(() => injectableModules.dio);
    gh.factory<_i464.RemoteService<dynamic>>(
        () => _i464.RemoteService<dynamic>(gh<_i361.Dio>()));
    return this;
  }
}

class _$InjectableModules extends _i109.InjectableModules {}
