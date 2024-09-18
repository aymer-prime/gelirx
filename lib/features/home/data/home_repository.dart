import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:gelirx/app/network/remote_service.dart';
import 'package:gelirx/app/utils/app_constants.dart';
import 'package:gelirx/features/shared/domain/dtos/category/category_dto.dart';
import 'package:gelirx/features/home/domain/entities/category.dart';
import 'package:gelirx/features/home/domain/i_home_repository.dart';
import 'package:gelirx/features/shared/domain/mappers/shared_mappers.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IHomeRepository)
class HomeRepository implements IHomeRepository {
  final RemoteService _remoteService;

  HomeRepository(
    this._remoteService,
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
        data: {'lang': 'en'},
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
}
