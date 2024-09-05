import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:gelirx/app/local_services/local_services.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:gelirx/app/network/remote_service.dart';
import 'package:gelirx/app/utils/app_constants.dart';
import 'package:gelirx/features/home/data/dtos/category_dto.dart';
import 'package:gelirx/features/home/data/mappers/home_mappers.dart';
import 'package:gelirx/features/home/domain/entities/category.dart';
import 'package:gelirx/features/home/domain/i_home_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IHomeRepository)
class HomeRepository implements IHomeRepository {
  final RemoteService _remoteService;
  final LocalService _localDataSource;
  //final NetworkInfo _networkInfo;

  HomeRepository(
    this._remoteService,
    //this._networkInfo,
    this._localDataSource,
  );

  @override
  Future<Either<ApiException, List<Category>>> getCategories(
      String pokemonSpeciesUrl) async {
    try {
      var responce = await _remoteService.getList(
        '${Constants.baseUrl}categories.php',
        queryParameters: {'lang': 'en'},
        fromJson: CategoryDto.fromJson,
      );
      //var result = ;
    } on ApiException catch (e) {}
  }
}
