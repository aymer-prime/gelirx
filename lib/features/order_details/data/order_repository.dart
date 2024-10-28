import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:path/path.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:gelirx/app/network/remote_service.dart';
import 'package:gelirx/app/utils/app_constants.dart';
import 'package:gelirx/features/order_details/domain/i_order_repository.dart';
import 'package:geolocator_platform_interface/src/models/position.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IOrderRepository)
class OrderRepository implements IOrderRepository {
  final RemoteService _remoteService;

  const OrderRepository(
    this._remoteService,
  );

  @override
  Future<Either<ApiException, Unit>> callMaster(
      String token,
      String userId,
      String masterId,
      String categoryId,
      String description,
      String address,
      Position location,
      List<File> images) async {
    try {
      await _remoteService.post(
        '${Constants.baseUrl}services/booking-history.php',
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
          },
        ),
        data: {
          'lang': 'tr',
          'token': token,
          'master_id': masterId,
          'user_id': userId,
          'category_id': categoryId,
          'description': description,
          'address': address,
          'latitude': location.latitude,
          'longitude': location.longitude,
          'img[]': images.map((e) async {
            String fileName = basename(e.path);
            return await MultipartFile.fromFile(
              e.path,
              filename: fileName,
              contentType: DioMediaType(
                'image',
                fileName.split('.').last,
              ),
            );
          })
        },
      );
      return right(unit);
    } on ApiException catch (e) {
      return left(e);
    }
  }
}
