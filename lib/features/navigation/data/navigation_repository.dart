import 'package:dartz/dartz.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:gelirx/app/utils/app_constants.dart';
import 'package:geolocator_platform_interface/src/models/position.dart';
import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';
import '../../../app/network/remote_service.dart';
import '../domain/entities/route_entity.dart';
import '../domain/i_navigation_repository.dart';
import 'package:geolocator/geolocator.dart';

@LazySingleton(as: INavigationRepository)
class NavigationRepository implements INavigationRepository {
  late final RemoteService _remoteService;

  NavigationRepository(this._remoteService);

  @override
  Future<Either<ApiException, Stream<Position>>> getLocationStream() async {
    try {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        return const Left(ApiException.defaultException("0", "Location services are disabled."));
      }

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return const Left(ApiException.defaultException("0", "Location permissions are denied."));
        }
      }

      if (permission == LocationPermission.deniedForever) {
        return const Left(ApiException.defaultException("0", "Location permissions are permanently denied."));
      }

      Stream<Position> positionStream = Geolocator.getPositionStream(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
          distanceFilter: Constants.distanceFilter,
        ),
      );

      return Right(positionStream);
    } catch (e) {
      return Left(ApiException.defaultException("0", e.toString()));
    }
  }

  @override
  Future<Either<ApiException, RouteInfo>> getRoute(LatLng start, LatLng end) async {
    try {
      final url =
          'https://api.openrouteservice.org/v2/directions/driving-car?api_key=5b3ce3597851110001cf62482b2eff2466a54963bcb553f5a5c10e7c&start=${start.longitude},${start.latitude}&end=${end.longitude},${end.latitude}';

      final response = await _remoteService.get(url);

      if (response.statusCode == 200) {
        final data = response.data;
        final route = data?['features'][0]['geometry']['coordinates'] as List<dynamic>;
        final duration = data?['features'][0]["properties"]['summary']['duration']; // Duration in seconds
        final distance = data?['features'][0]["properties"]['summary']['distance']; // Distance in meters

        final routeCoordinates = route
            .map((e) => LatLng(e[1], e[0]))
            .toList();

        final routeInfo = RouteInfo(
          coordinates: routeCoordinates,
          duration: duration,
          distance: distance,
        );

        return Right(routeInfo);
      } else {
        return Left(ApiException.defaultException("0", "Failed to get route."));
      }
    } catch (e) {
      return Left(ApiException.defaultException("0", e.toString()));
    }
  }
}



