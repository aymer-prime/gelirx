import 'package:dartz/dartz.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:gelirx/features/shared/domain/entities/interaction/interaction_entity.dart';

abstract class IInteractionsRepository {
  Future<Either<ApiException, List<Interaction>>> getMasterInteractions(
      String masterId);
  Future<Either<ApiException, Unit>> addInteraction(
    String token,
    String userId,
    String masterId,
    String serviceId,
    int point,
    String comment,
  );
}
