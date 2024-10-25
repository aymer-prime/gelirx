import 'package:dartz/dartz.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:gelirx/features/favorite/domain/entities/favorite_entities.dart';

abstract class IFavoriteRepository {
  Future<Either<ApiException, List<Favorite>>> getFavoriteMasters(
    String userId,
    String token,
  );
  Future<Either<ApiException, Unit>> setFavorite(
    String userId,
    String masterId,
    String token,
  );
  Future<Either<ApiException, Unit>> removeFavorite(
    String userId,
    String masterId,
    String token,
  );
}
