import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:gelirx/app/network/api_exception.dart';
//todo modify it work with api
abstract class ILoginRepository {
  Future<Either<ApiException, List<Category>>> login(
      String pokemonSpeciesUrl);
}
