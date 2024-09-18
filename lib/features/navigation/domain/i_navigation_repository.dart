import 'dart:async';
import 'dart:ffi';
import 'package:dartz/dartz.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:gelirx/features/navigation/domain/entities/route_entity.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';


abstract class INavigationRepository {
  Future<Either<ApiException, Stream<Position>>> getLocationStream();
  Future<Either<ApiException, RouteInfo>> getRoute(LatLng start, LatLng end);
}
