import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/presentation/misc/tile_provider.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

class HomeMap extends StatelessWidget {
  final Position userPosition;
  final int range;
  const HomeMap({
    super.key,
    required this.userPosition,
    required this.range,
  });

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        initialCenter: LatLng(
          userPosition.latitude,
          userPosition.longitude,
        ),
        initialZoom: 12,
        minZoom: 12,
      ),
      children: [
        openStreetMapTileLayer,
        CircleLayer(
          circles: [
            CircleMarker(
                useRadiusInMeter: true,
                radius: range * 1000,
                point: LatLng(
                  userPosition.latitude,
                  userPosition.longitude,
                ),
                color: Colors.blue.withOpacity(0.1),
                borderColor: Colors.blue,
                borderStrokeWidth: AppSize.s1)
          ],
        ),
        MarkerLayer(
          markers: [
            Marker(
              point: LatLng(
                userPosition.latitude,
                userPosition.longitude,
              ),
              child: Icon(
                Icons.location_on,
                color: ColorManager.darkPrimary,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
