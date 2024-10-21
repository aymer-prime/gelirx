import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:gelirx/app/network/remote_service.dart';
import 'package:gelirx/app/utils/app_constants.dart';
import 'package:gelirx/features/shared/domain/i_shared_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ISharedRepository)
class SharedRepository implements ISharedRepository {
  final RemoteService _remoteService;

  SharedRepository(
    this._remoteService,
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
}
