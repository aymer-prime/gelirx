import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:gelirx/app/extentions/context.dart';
import 'package:gelirx/app/injector/injection.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/presentation/bloc/home_bloc.dart';
import 'package:gelirx/features/home/presentation/misc/tile_provider.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<HomeBloc>()
        ..add(
          const HomeEvent.getCurrentPosition(),
        ),
      child: Scaffold(
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(
                AppPadding.p16,
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(AppPadding.p16),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello Guest 👋',
                          style: context.textTheme.titleMedium,
                        ),
                        Text(
                          'What you are looking for today',
                          style: context.textTheme.displayMedium,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSize.s16),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(AppPadding.p16),
                      decoration: BoxDecoration(color: ColorManager.white),
                      child: state.userPosition.fold(
                        () => const Center(
                          child: CircularProgressIndicator(),
                        ),
                        (userPosition) => HomeMap(userPosition: userPosition),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class HomeMap extends StatelessWidget {
  final Position userPosition;
  const HomeMap({
    super.key,
    required this.userPosition,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppSize.s14),
      child: FlutterMap(
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
                  radius: 5000,
                  point: LatLng(
                    userPosition.latitude,
                    userPosition.longitude,
                  ),
                  color: Colors.blue.withOpacity(0.15),
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
                  color: Colors.red[800],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
