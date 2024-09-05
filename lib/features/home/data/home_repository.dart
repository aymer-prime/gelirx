import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/src/foundation/annotations.dart';
import 'package:gelirx/app/local_services/local_services.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:gelirx/app/network/remote_service.dart';
import 'package:gelirx/features/home/domain/i_home_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IHomeRepository)
class HomeRepository implements IHomeRepository {
  final RemoteService _appServiceClient;
  final LocalService _localDataSource;
  //final NetworkInfo _networkInfo;

  HomeRepository(
    this._appServiceClient,
    //this._networkInfo,
    this._localDataSource,
  );

  @override
  Future<Either<ApiException, List<Category>>> getCategories(String pokemonSpeciesUrl) {
    // TODO: implement getCategories
    throw UnimplementedError();
  }
}
