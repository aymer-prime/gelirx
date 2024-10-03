import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:gelirx/app/local_services/local_services.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:gelirx/app/network/remote_service.dart';
import 'package:gelirx/app/utils/app_constants.dart';
import 'package:gelirx/features/home/data/dto/master_dto.dart';
import 'package:gelirx/features/home/data/mappers/home_mappers.dart';
import 'package:gelirx/features/home/domain/entities/master.dart';
import 'package:gelirx/features/shared/domain/dtos/category/category_dto.dart';
import 'package:gelirx/features/home/domain/entities/category.dart';
import 'package:gelirx/features/home/domain/i_home_repository.dart';
import 'package:gelirx/features/shared/domain/mappers/shared_mappers.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';

@LazySingleton(as: IHomeRepository)
class HomeRepository implements IHomeRepository {
  final RemoteService _remoteService;
  final LocalService _localService;

  HomeRepository(
    this._remoteService,
    this._localService,
  );

  @override
  Future<Either<ApiException, List<Category>>> getCategories() async {
    try {
      // var responce = await _remoteService.getList<CategoryDto>(
      //   '${Constants.baseUrl}categories/categories.php',
      //   data: {'lang': 'en'},
      //   fromJson: CategoryDto.fromJson,
      // );
      // var resultList = responce
      //     .map(
      //       (e) => e.toDomain(),
      //     )
      //     .toList();
      // return right(resultList);
      var response = await _remoteService.post(
        '${Constants.baseUrl}categories/categories.php',
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
          },
        ),
        data: {'lang': 'tr'},
      );
      final List<dynamic> responseData =
          response; // Casting the dynamic type to List<dynamic>
      final List<Category> resultList = responseData
          .map(
            (e) => CategoryDto.fromJson(e).toDomain(),
          )
          .toList();
      return right(resultList);
    } on ApiException catch (e) {
      return left(e);
    }
  }

  @override
  Future<Either<ApiException, List<Category>>> getSubCategories(
      String catId) async {
    try {
      var response = await _remoteService.post(
        '${Constants.baseUrl}categories/categories.php',
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
          },
        ),
        data: {
          'lang': 'en',
          'category_id': catId,
        },
      );
      final List<dynamic> responseData = response;
      final List<Category> resultList = responseData
          .map(
            (e) => CategoryDto.fromJson(e).toDomain(),
          )
          .toList();
      return right(resultList);
    } on ApiException catch (e) {
      return left(e);
    }
  }

  @override
  Future<Either<ApiException, List<Master>>> getMasters(
      LatLng centerPosition, int? selectedCategory) async {
    try {
      var response = await _remoteService.post(
        '${Constants.baseUrl}master/search.php',
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
          },
        ),
        data: {
          'lang': 'en',
          'latitude': centerPosition.latitude,
          'longitude': centerPosition.longitude,
          'category_id': selectedCategory ?? 0,
        },
      );
      final List<dynamic> responseData = response;
      final List<Master> masterList = responseData
          .map(
            (e) => MasterDto.fromJson(e).toDomain(),
          )
          .toList();
      return right(masterList);
    } on ApiException catch (e) {
      return left(e);
    }
  }

  @override
  Future<Either<ApiException, Unit>> bookService(
    LatLng userPosition,
    String address,
    String description,
    String categoryId,
  ) async {
    try {
      var token = _localService.get(Constants.tokenKey);
      var userId = _localService.get(Constants.userIdKey);
      var longitude = userPosition.longitude;
      var latitude = userPosition.latitude;
      var data = {
        'lang': 'tr',
        'user_id': userId,
        'token': token,
        'category_id': categoryId,
        'latitude': latitude,
        'longitude': longitude,
        'address': address,
        'description': description,
      };
      var response = await _remoteService.post(
        '${Constants.baseUrl}booking/new.php',
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
          },
        ),
        data: data,
      );
      return right(unit);
    } on ApiException catch (e) {
      return left(e);
    } catch (e) {
      return left(
        ApiException.defaultException('-1', e.toString()),
      );
    }
  }


  @override
  Future<Either<ApiException, Unit>> updateUserLocationAndToken(
      Position userPosition) async {
    try {
      var token = _localService.get(Constants.tokenKey);
      var userId = _localService.get(Constants.userIdKey);
      var longitude = userPosition.longitude;
      var latitude = userPosition.latitude;
      var fcmToken = await FirebaseMessaging.instance.getToken();
      var data = {
        'lang': 'tr',
        'user_id': userId,
        'token': token,
        'latitude': latitude,
        'longitude': longitude,
        'firebase_token': fcmToken
      };
      var response = await _remoteService.post(
        '${Constants.baseUrl}master/update_lat_long.php',
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
          },
        ),
        data: data,
      );
      return right(unit);
    } on ApiException catch (e) {
      return left(e);
    } catch (e) {
      return left(
        ApiException.defaultException('-1', e.toString()),
      );
    }
  }
}
