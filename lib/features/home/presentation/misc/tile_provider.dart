import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_cancellable_tile_provider/flutter_map_cancellable_tile_provider.dart';

TileLayer get openStreetMapTileLayer => TileLayer(
      urlTemplate:
          'https://mts0.google.com/vt/lyrs=r@289000001&hl=en&src=app&s=Gal&apistyle=s.t%3A0|s.e%3Al|p.v%3Aoff,&x={x}&y={y}&z={z}',
      userAgentPackageName: 'dev.fleaflet.flutter_map.example',
      // Use the recommended flutter_map_cancellable_tile_provider package to
      // support the cancellation of loading tiles.
      tileProvider: CancellableNetworkTileProvider(),
    );
