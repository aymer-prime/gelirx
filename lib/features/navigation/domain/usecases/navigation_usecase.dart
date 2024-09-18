import 'package:dartz/dartz.dart';
import 'package:gelirx/features/navigation/domain/entities/route_entity.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';
import '../../../../app/network/api_exception.dart';
import '../i_navigation_repository.dart';

@LazySingleton()
class NavigationUsecase {
  final INavigationRepository repository;
  NavigationUsecase(this.repository);

  Future<Either<ApiException, Stream<Position>>> getLocationStream() async {
  return await repository.getLocationStream();
  }
  Future<Either<ApiException, RouteInfo>> getRoute(LatLng start, LatLng end) async {
    return await repository.getRoute(start, end);
  }
}
