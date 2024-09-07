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
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../features/home/data/home_repository.dart' as _i65;
import '../../features/home/domain/i_home_repository.dart' as _i317;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i202;
import '../local_services/local_services.dart' as _i902;
import '../navigation/app_router.dart' as _i630;
import '../network/dio_client.dart' as _i667;
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
    gh.lazySingleton<_i630.AppRouter>(() => injectableModules.appRouter);
    gh.lazySingleton<_i973.InternetConnectionChecker>(
        () => injectableModules.internetConnectionChecker);
    gh.lazySingleton<_i361.Dio>(() => injectableModules.dio);
    gh.factory<_i667.DioClient>(() => _i667.DioClient(gh<_i361.Dio>()));
    gh.factory<_i464.RemoteService>(
        () => _i464.RemoteService(gh<_i667.DioClient>()));
    gh.lazySingleton<_i317.IHomeRepository>(
        () => _i65.HomeRepository(gh<_i464.RemoteService>()));
    gh.factory<_i902.LocalService>(
        () => _i902.LocalService(gh<_i460.SharedPreferences>()));
    gh.factory<_i202.HomeBloc>(
        () => _i202.HomeBloc(gh<_i317.IHomeRepository>()));
    return this;
  }
}

class _$InjectableModules extends _i109.InjectableModules {}