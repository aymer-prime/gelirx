import 'package:dartz/dartz.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:gelirx/features/home/domain/entities/category.dart';
import 'package:gelirx/features/home/domain/entities/master.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

abstract class IHomeRepository {
  Future<Either<ApiException, List<Category>>> getCategories();
  Future<Either<ApiException, List<Category>>> getSubCategories(String catId);
  Future<Either<ApiException, List<Master>>> getMasters(
      LatLng centerPosition, String? selectedCategory);
  Future<Either<ApiException, Unit>> bookService(
    LatLng centerPosition,
    String address,
    String description,
    String categoryId,
  );
  Future<Either<ApiException, String>> callMaster(
    LatLng centerPosition,
    String address,
    String description,
    String masterId,
  );
  Future<Either<ApiException, Unit>> updateUserLocationAndToken(
      Position userPosition);
}
