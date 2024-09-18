import 'package:latlong2/latlong.dart';

class RouteInfo {
  final List<LatLng> coordinates;
  final double duration;
  final double distance;

  RouteInfo({
    required this.coordinates,
    required this.duration,
    required this.distance,
  });
}