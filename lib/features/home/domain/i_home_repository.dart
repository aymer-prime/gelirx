import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:gelirx/app/network/api_exception.dart';

abstract class IHomeRepository {
  Future<Either<ApiException, List<Category>>> getCategories(
      String pokemonSpeciesUrl);
}
