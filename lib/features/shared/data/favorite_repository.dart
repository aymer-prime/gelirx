import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:gelirx/app/network/remote_service.dart';
import 'package:gelirx/app/utils/app_constants.dart';
import 'package:gelirx/features/favorite/data/dtos/favorite_dto.dart';
import 'package:gelirx/features/favorite/data/mapers/favorite_mapers.dart';
import 'package:gelirx/features/favorite/domain/entities/favorite_entities.dart';
import 'package:gelirx/features/shared/domain/i_favorite_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IFavoriteRepository)
class FavoriteRepository implements IFavoriteRepository {
  final RemoteService _remoteService;

  FavoriteRepository(
    this._remoteService,
  );

  @override
  Future<Either<ApiException, List<Favorite>>> getFavoriteMasters(
      String userId, String token) async {
    try {
      var response = await _remoteService.post(
        '${Constants.baseUrl}user/get-favourite-masters.php',
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
          },
        ),
        data: {
          'lang': 'tr',
          'user_id': userId,
          'token': token,
        },
      );
      final List<dynamic> responseData = response;
      List<Favorite> favoriteMasters = responseData
          .map(
            (e) => FavoriteDto.fromJson(e).toDomain(),
          )
          .toList();
      return right(favoriteMasters);
    } on ApiException catch (e) {
      return left(e);
    } catch (e) {
      return left(
        ApiException.defaultException('-1', e.toString()),
      );
    }
  }

  @override
  Future<Either<ApiException, Unit>> removeFavorite(
      String userId, String masterId, String token) async {
    try {
      await _remoteService.post(
        '${Constants.baseUrl}user/remove-favourite-master.php',
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
          },
        ),
        data: {
          'lang': 'tr',
          'user_id': userId,
          'token': token,
          'master_id': masterId
        },
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
  Future<Either<ApiException, Unit>> setFavorite(
      String userId, String masterId, String token) async {
    try {
      await _remoteService.post(
        '${Constants.baseUrl}user/add-favourite-master.php',
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
          },
        ),
        data: {
          'lang': 'tr',
          'user_id': userId,
          'token': token,
          'master_id': masterId
        },
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
