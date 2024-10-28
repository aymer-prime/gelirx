import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:gelirx/app/network/remote_service.dart';
import 'package:gelirx/app/utils/app_constants.dart';
import 'package:gelirx/features/shared/data/dtos/interaction/interaction_dto.dart';
import 'package:gelirx/features/shared/data/mappers/shared_mappers.dart';
import 'package:gelirx/features/shared/domain/entities/interaction/interaction_entity.dart';
import 'package:gelirx/features/shared/domain/i_interactions_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IInteractionsRepository)
class InteractionRepository implements IInteractionsRepository {
  final RemoteService _remoteService;

  InteractionRepository(
    this._remoteService,
  );

  @override
  Future<Either<ApiException, Unit>> addInteraction(String token, String userId,
      String masterId, String serviceId, int point, String comment) async {
    try {
      await _remoteService.post(
        '${Constants.baseUrl}user/add-review.php',
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
          },
        ),
        data: {
          'lang': 'tr',
          'user_id': userId,
          'token': token,
          'master_id': masterId,
          'point': point,
          'comment': comment,
          'service_id': serviceId,
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
  Future<Either<ApiException, List<Interaction>>> getMasterInteractions(
      String masterId) async {
    try {
      final response = await _remoteService.post(
        '${Constants.baseUrl}user/master/get-master-reviews.php',
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
          },
        ),
        data: {
          'lang': 'tr',
          'master_id': masterId,
        },
      );
      final List<dynamic> responseData = response;
      List<Interaction> masterInteractions = responseData
          .map(
            (e) => InteractionDto.fromJson(e).toDomain(),
          )
          .toList();
      return right(masterInteractions);
    } on ApiException catch (e) {
      return left(e);
    } catch (e) {
      print('#error: $e');
      return left(
        ApiException.defaultException('-1', e.toString()),
      );
    }
  }
}
