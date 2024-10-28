import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:geolocator/geolocator.dart';

abstract class IOrderRepository {
  Future<Either<ApiException, Unit>> callMaster(
    String token,
    String userId,
    String masterId,
    String categoryId,
    String description,
    String address,
    Position location,
    List<File> images,
  );
}
