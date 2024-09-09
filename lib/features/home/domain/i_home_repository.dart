import 'package:dartz/dartz.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:gelirx/features/home/domain/entities/category.dart';

abstract class IHomeRepository {
  Future<Either<ApiException, List<Category>>> getCategories();
  Future<Either<ApiException, List<Category>>> getSubCategories(String catId);
}
