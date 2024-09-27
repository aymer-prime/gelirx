import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/presentation/bloc/home_bloc.dart';
import 'package:gelirx/features/home/presentation/misc/tile_provider.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

import 'master_marker.dart';

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
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return FlutterMap(
          options: MapOptions(
            onMapEvent: (mapEvent) {
              if (mapEvent is MapEventMoveEnd) {
                final newCenter = mapEvent.camera.center;
                context.read<HomeBloc>().add(
                  HomeEvent.getMasters(newCenter),
                );
              }
            },
            initialCenter: LatLng(
              userPosition.latitude,
              userPosition.longitude,
            ),
            initialZoom: 12,
            minZoom: 12,
          ),

          children: [
            openStreetMapTileLayer,
            // CircleLayer(
            //   circles: [
            //     CircleMarker(
            //         useRadiusInMeter: true,
            //         radius: range * 1000,
            //         point: LatLng(
            //           userPosition.latitude,
            //           userPosition.longitude,
            //         ),
            //         color: Colors.blue.withOpacity(0.1),
            //         borderColor: Colors.blue,
            //         borderStrokeWidth: AppSize.s1)
            //   ],
            // ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(
                    userPosition.latitude,
                    userPosition.longitude,
                  ),
                  width: 80,
                  height: 80,
                  child: Icon(
                    Icons.my_location,
                    color: ColorManager.primary,  // Custom color for the user's location marker
                    size: 40,
                  ),
                ),
              ],
            ),


            MarkerLayer(
              markers: state.masters.map((master) {
                return Marker(
                  point: LatLng(master.latitude, master.longitude),
                  width: 80,
                  height: 80,
                  child: CustomMarker(
                    master: master,  // Assuming 'master.photoUrl' contains the photo URL
                    onTap: () {
                      // Show bottom sheet with master details
                      // showModalBottomSheet(
                      //   context: context,
                      //   builder: (BuildContext context) {
                      //   //  return _buildBottomSheet(master);
                      //   },
                      // );
                    },
                  ),
                );
              }).toList(),
            ),
          ],
        );
      },
    );
  }
}
