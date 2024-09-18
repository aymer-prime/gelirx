// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i806;
import 'package:get_it/get_it.dart' as _i174;
import 'package:google_sign_in/google_sign_in.dart' as _i116;
import 'package:image_picker/image_picker.dart' as _i183;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i973;
import 'package:shared_preferences/shared_preferences.dart' as _i460;
import 'package:sign_in_with_apple/sign_in_with_apple.dart' as _i264;

import '../../features/auth/data/auth_repository.dart' as _i726;
import '../../features/auth/data/mappers/firebase_user_maper.dart' as _i905;
import '../../features/auth/domain/i_auth_repository.dart' as _i1026;
import '../../features/auth/domain/usecases/sign_in_with_social_media.dart'
    as _i309;
import '../../features/auth/presentation/bloc/auth_bloc.dart' as _i797;
import '../../features/auth/presentation/bloc/auth_status/auth_status_bloc.dart'
    as _i663;
import '../../features/auth/presentation/bloc/master_verification/master_verification_bloc.dart'
    as _i908;
import '../../features/booking/data/booking_repository.dart' as _i678;
import '../../features/booking/domain/i_booking_repository.dart' as _i92;
import '../../features/booking/domain/usecases/booking_usecase.dart' as _i216;
import '../../features/home/data/home_repository.dart' as _i65;
import '../../features/home/domain/i_home_repository.dart' as _i317;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i202;
import '../../features/navigation/data/navigation_repository.dart' as _i490;
import '../../features/navigation/domain/i_navigation_repository.dart' as _i782;
import '../../features/navigation/domain/usecases/navigation_usecase.dart'
    as _i603;
import '../../features/navigation/presentation/bloc/navigation_bloc.dart'
    as _i162;
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
    gh.lazySingleton<_i183.ImagePicker>(() => injectableModules.imagePicker);
    gh.lazySingleton<_i973.InternetConnectionChecker>(
        () => injectableModules.internetConnectionChecker);
    gh.lazySingleton<_i116.GoogleSignIn>(() => injectableModules.googleSignIn);
    gh.lazySingleton<_i806.FacebookAuth>(() => injectableModules.facebookAuth);
    gh.lazySingleton<_i264.SignInWithApple>(
        () => injectableModules.signInWithApple);
    gh.lazySingleton<_i59.FirebaseAuth>(() => injectableModules.firebaseAuth);
    gh.lazySingleton<_i361.Dio>(() => injectableModules.dio);
    gh.lazySingleton<_i905.FirebaseUserMapper>(
        () => _i905.FirebaseUserMapper());
    gh.factory<_i667.DioClient>(() => _i667.DioClient(gh<_i361.Dio>()));
    gh.factory<_i464.RemoteService>(
        () => _i464.RemoteService(gh<_i667.DioClient>()));
    gh.lazySingleton<_i92.IBookingRepository>(() => _i678.BookingRepository());
    gh.lazySingleton<_i317.IHomeRepository>(
        () => _i65.HomeRepository(gh<_i464.RemoteService>()));
    gh.lazySingleton<_i782.INavigationRepository>(
        () => _i490.NavigationRepository(gh<_i464.RemoteService>()));
    gh.factory<_i902.LocalService>(
        () => _i902.LocalService(gh<_i460.SharedPreferences>()));
    gh.lazySingleton<_i603.NavigationUsecase>(
        () => _i603.NavigationUsecase(gh<_i782.INavigationRepository>()));
    gh.factory<_i162.NavigationBloc>(
        () => _i162.NavigationBloc(gh<_i603.NavigationUsecase>()));
    gh.factory<_i202.HomeBloc>(
        () => _i202.HomeBloc(gh<_i317.IHomeRepository>()));
    gh.lazySingleton<_i216.BookingUsecase>(
        () => _i216.BookingUsecase(gh<_i92.IBookingRepository>()));
    gh.lazySingleton<_i1026.IAuthRepository>(() => _i726.AuthRepository(
          gh<_i59.FirebaseAuth>(),
          gh<_i116.GoogleSignIn>(),
          gh<_i806.FacebookAuth>(),
          gh<_i59.FirebaseAuth>(),
          gh<_i905.FirebaseUserMapper>(),
          gh<_i902.LocalService>(),
          gh<_i464.RemoteService>(),
        ));
    gh.lazySingleton<_i309.SignInUseCase>(
        () => _i309.SignInUseCase(gh<_i1026.IAuthRepository>()));
    gh.factory<_i908.MasterVerificationBloc>(() => _i908.MasterVerificationBloc(
          gh<_i317.IHomeRepository>(),
          gh<_i1026.IAuthRepository>(),
        ));
    gh.lazySingleton<_i797.AuthBloc>(
        () => _i797.AuthBloc(gh<_i309.SignInUseCase>()));
    gh.factory<_i663.AuthStatusBloc>(
        () => _i663.AuthStatusBloc(gh<_i1026.IAuthRepository>()));
    return this;
  }
}

class _$InjectableModules extends _i109.InjectableModules {}
