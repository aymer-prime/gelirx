import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:gelirx/app/local_services/local_services.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:gelirx/app/network/remote_service.dart';
import 'package:gelirx/app/utils/app_constants.dart';
import 'package:gelirx/features/auth/data/dtos/auth_dtos.dart';
import 'package:gelirx/features/auth/data/mappers/auth_mapers.dart';
import 'package:gelirx/features/auth/domain/entities/user_entity.dart';
import 'package:gelirx/features/shared/domain/i_shared_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ISharedRepository)
class SharedRepository implements ISharedRepository {
  final RemoteService _remoteService;
  final LocalService _localService;

  SharedRepository(
    this._remoteService,
    this._localService,
  );

  @override
  Future<Either<ApiException, Unit>> updateOrderStatus(
      String orderId, int status) async {
    try {
      await _remoteService.post(
        '${Constants.baseUrl}services/update-order-status.php',
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
          },
        ),
        data: {
          'lang': 'en',
          'order_id': orderId,
          'status': status,
        },
      );
      return right(unit);
    } on ApiException catch (e) {
      return left(e);
    }
  }

  @override
  Future<Either<ApiException, UserInfo>> getUserInfo(String userId) async {
    try {
      //final id = _localService.get(Constants.userIdKey);
      var response = await _remoteService.post(
        '${Constants.baseUrl}user/master/info.php',
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
          },
        ),
        data: {
          'lang': 'tr',
          'user_id': userId,
        },
      );
      final userInfo = UserInfoDto.fromJson(response).toDomain();
      return right(userInfo);
    } on ApiException catch (e) {
      return left(e);
    } catch (e) {
      return left(
        ApiException.defaultException('-1', e.toString()),
      );
    }
  }
}
