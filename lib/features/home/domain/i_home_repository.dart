import 'package:dartz/dartz.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:gelirx/features/home/domain/entities/category.dart';
import 'package:gelirx/features/home/domain/entities/master.dart';
import 'package:latlong2/latlong.dart';

abstract class IHomeRepository {
  Future<Either<ApiException, List<Category>>> getCategories();
  Future<Either<ApiException, List<Category>>> getSubCategories(String catId);
  Future<Either<ApiException, List<Master>>> getMasters(LatLng centerPosition);
}
