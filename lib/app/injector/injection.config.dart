// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:dio/dio.dart' as _i361;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:firebase_messaging/firebase_messaging.dart' as _i892;
import 'package:get_it/get_it.dart' as _i174;
import 'package:image_picker/image_picker.dart' as _i183;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i973;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../features/auth/data/auth_repository.dart' as _i726;
import '../../features/auth/domain/i_auth_repository.dart' as _i1026;
import '../../features/auth/domain/usecases/sign_in_with_social_media.dart'
    as _i309;
import '../../features/auth/presentation/bloc/auth_bloc.dart' as _i797;
import '../../features/auth/presentation/bloc/auth_status/auth_status_bloc.dart'
    as _i663;
import '../../features/auth/presentation/bloc/master_verification/master_verification_bloc.dart'
    as _i908;
import '../../features/auth/presentation/bloc/user_verification/user_verification_bloc.dart'
    as _i446;
import '../../features/booking/data/booking_repository.dart' as _i678;
import '../../features/booking/domain/i_booking_repository.dart' as _i92;
import '../../features/booking/presentation/bloc/booking_bloc.dart' as _i802;
import '../../features/favorite/presentation/bloc/favorite_bloc.dart' as _i1020;
import '../../features/home/data/home_repository.dart' as _i65;
import '../../features/home/domain/i_home_repository.dart' as _i317;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i202;
import '../../features/master/presentation/bloc/master_bloc.dart' as _i130;
import '../../features/messages/data/chat_repository.dart' as _i756;
import '../../features/messages/domain/i_chat_repository.dart' as _i235;
import '../../features/messages/presentation/bloc/chat_bloc.dart' as _i16;
import '../../features/navigation/data/navigation_repository.dart' as _i490;
import '../../features/navigation/domain/i_navigation_repository.dart' as _i782;
import '../../features/navigation/domain/usecases/navigation_usecase.dart'
    as _i603;
import '../../features/navigation/presentation/bloc/navigation_bloc.dart'
    as _i162;
import '../../features/order_details/data/order_repository.dart' as _i674;
import '../../features/order_details/domain/i_order_repository.dart' as _i955;
import '../../features/order_details/presentation/bloc/order_bloc.dart'
    as _i838;
import '../../features/shared/data/favorite_repository.dart' as _i516;
import '../../features/shared/data/interaction_repository.dart' as _i100;
import '../../features/shared/data/shared_repository.dart' as _i493;
import '../../features/shared/domain/i_favorite_repository.dart' as _i287;
import '../../features/shared/domain/i_interactions_repository.dart' as _i777;
import '../../features/shared/domain/i_shared_repository.dart' as _i243;
import '../local_services/local_services.dart' as _i902;
import '../local_services/notifiaction_handler.dart' as _i468;
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
    gh.lazySingleton<_i974.FirebaseFirestore>(
        () => injectableModules.firebaseFirestore);
    gh.lazySingleton<_i59.FirebaseAuth>(() => injectableModules.firebaseAuth);
    gh.lazySingleton<_i892.FirebaseMessaging>(
        () => injectableModules.firebaseMessaging);
    gh.lazySingleton<_i361.Dio>(() => injectableModules.dio);
    gh.factory<_i667.DioClient>(() => _i667.DioClient(gh<_i361.Dio>()));
    gh.factory<_i468.NotificationHandlerManager>(
        () => _i468.NotificationHandlerManager(gh<_i892.FirebaseMessaging>()));
    gh.factory<_i464.RemoteService>(
        () => _i464.RemoteService(gh<_i667.DioClient>()));
    gh.lazySingleton<_i92.IBookingRepository>(
        () => _i678.BookingRepository(gh<_i464.RemoteService>()));
    gh.lazySingleton<_i777.IInteractionsRepository>(
        () => _i100.InteractionRepository(gh<_i464.RemoteService>()));
    gh.lazySingleton<_i782.INavigationRepository>(
        () => _i490.NavigationRepository(gh<_i464.RemoteService>()));
    gh.lazySingleton<_i955.IOrderRepository>(
        () => _i674.OrderRepository(gh<_i464.RemoteService>()));
    gh.factory<_i902.LocalService>(
        () => _i902.LocalService(gh<_i460.SharedPreferences>()));
    gh.lazySingleton<_i287.IFavoriteRepository>(
        () => _i516.FavoriteRepository(gh<_i464.RemoteService>()));
    gh.lazySingleton<_i235.IChatRepository>(() => _i756.ChatRepository(
          gh<_i460.SharedPreferences>(),
          gh<_i974.FirebaseFirestore>(),
        ));
    gh.lazySingleton<_i243.ISharedRepository>(() => _i493.SharedRepository(
          gh<_i464.RemoteService>(),
          gh<_i902.LocalService>(),
        ));
    gh.lazySingleton<_i1026.IAuthRepository>(() => _i726.AuthRepository(
          gh<_i59.FirebaseAuth>(),
          gh<_i902.LocalService>(),
          gh<_i464.RemoteService>(),
        ));
    gh.lazySingleton<_i603.NavigationUsecase>(
        () => _i603.NavigationUsecase(gh<_i782.INavigationRepository>()));
    gh.factory<_i162.NavigationBloc>(
        () => _i162.NavigationBloc(gh<_i603.NavigationUsecase>()));
    gh.lazySingleton<_i317.IHomeRepository>(() => _i65.HomeRepository(
          gh<_i464.RemoteService>(),
          gh<_i902.LocalService>(),
        ));
    gh.factory<_i1020.FavoriteBloc>(
        () => _i1020.FavoriteBloc(gh<_i287.IFavoriteRepository>()));
    gh.factory<_i16.ChatBloc>(() => _i16.ChatBloc(gh<_i235.IChatRepository>()));
    gh.factory<_i802.BookingBloc>(
        () => _i802.BookingBloc(gh<_i92.IBookingRepository>()));
    gh.factory<_i838.OrderBloc>(() => _i838.OrderBloc(
          gh<_i243.ISharedRepository>(),
          gh<_i955.IOrderRepository>(),
        ));
    gh.factory<_i663.AuthStatusBloc>(
        () => _i663.AuthStatusBloc(gh<_i1026.IAuthRepository>()));
    gh.factory<_i446.UserVerificationBloc>(
        () => _i446.UserVerificationBloc(gh<_i1026.IAuthRepository>()));
    gh.factory<_i130.MasterBloc>(() => _i130.MasterBloc(
          gh<_i243.ISharedRepository>(),
          gh<_i777.IInteractionsRepository>(),
        ));
    gh.lazySingleton<_i309.SignInUseCase>(
        () => _i309.SignInUseCase(gh<_i1026.IAuthRepository>()));
    gh.factory<_i202.HomeBloc>(
        () => _i202.HomeBloc(gh<_i317.IHomeRepository>()));
    gh.factory<_i908.MasterVerificationBloc>(() => _i908.MasterVerificationBloc(
          gh<_i317.IHomeRepository>(),
          gh<_i1026.IAuthRepository>(),
        ));
    gh.lazySingleton<_i797.AuthBloc>(
        () => _i797.AuthBloc(gh<_i309.SignInUseCase>()));
    return this;
  }
}

class _$InjectableModules extends _i109.InjectableModules {}
