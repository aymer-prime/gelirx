import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_map/flutter_map.dart';
import '../../../../app/injector/injection.dart';
import '../bloc/navigation_bloc.dart';

@RoutePage()
class NavigationPage extends StatelessWidget {
  final LatLng start = LatLng(37.7749, -122.4194);
  final LatLng end = LatLng(34.0522, -118.2437);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Map Navigation")),
      body: BlocProvider(
        create: (_) => getIt<NavigationBloc>(),
        child: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) {
          // Handling different states from the Bloc
          return state.map(
            initial: (_) => InkWell(onTap: (){
              context.read<NavigationBloc>().add(NavigationEvent.getRoute(start, end));
            }, child: const Center(child: Text("Press to get directions"))),
            loading: (_) => const Center(child: CircularProgressIndicator()),
            success: (state) => const Center(child: Text("Tracking location...")),
            routeSuccess: (state) => FlutterMap(
              options: MapOptions(
              initialCenter: start,
                initialZoom: 13
            ),
              children: [
                TileLayer(
                  urlTemplate:   'https://mts0.google.com/vt/lyrs=r@289000001&hl=en&src=app&s=Gal&apistyle=s.t%3A0|s.e%3Al|p.v%3Aoff,&x={x}&y={y}&z={z}',
                  subdomains: ['a', 'b', 'c'],
                ),
                PolylineLayer(
                  polylines: [
                    Polyline(
                      points: state.routeInfo.coordinates,
                      strokeWidth: 4.0,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ],
            ),
            error: (state) => Center(child: Text("Error: ${state.message}")),
          );
        },
      ),
),
    );
  }
}

