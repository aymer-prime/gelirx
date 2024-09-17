import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mapbox_navigation/flutter_mapbox_navigation.dart';
import 'package:latlong2/latlong.dart';

@RoutePage()
class NavigationPage extends StatefulWidget {
  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  String? _instruction;
  double? _distanceRemaining, _durationRemaining;
  MapBoxNavigationViewController? _controller;
  bool _routeBuilt = false;
  bool _isNavigating = false;
  bool _inFreeDrive = false;
  late MapBoxOptions _navigationOption;

  final WayPoint _origin = WayPoint(
    name: "Start Point",
    latitude: 25.184830682257555,
    longitude: 55.26465442622435,
  );
  final WayPoint _destination = WayPoint(
    name: "End Point",
    latitude: 25.19733516807367,
    longitude: 55.27431037843569,
  );

  @override
  void initState() {
    super.initState();
    initialize();
  }

  Future<void> initialize() async {
    if (!mounted) return;
    _navigationOption = MapBoxNavigation.instance.getDefaultOptions();
    _navigationOption.simulateRoute = true;
    _navigationOption.language = "tr";
    _navigationOption.units = VoiceUnits.metric;
    _navigationOption.zoom = 15.0;
    _navigationOption.initialLatitude = 25.184830682257555;
    _navigationOption.initialLongitude = 55.26465442622435;
    _navigationOption.mode = MapBoxNavigationMode.drivingWithTraffic;
    _navigationOption.tilt = 60.0;
    _navigationOption.mapStyleUrlDay =  "mapbox://styles/mapbox/streets-v11";
    _navigationOption.mapStyleUrlNight = "mapbox://styles/mapbox/dark-v10";
    MapBoxNavigation.instance.registerRouteEventListener(_onRouteEvent);
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 1,
            child: MapBoxNavigationView(
              options: _navigationOption,
              onRouteEvent: _onRouteEvent,
              onCreated: (MapBoxNavigationViewController controller) async {
                await _controller?.initialize();
                _controller = controller;
                _buildRoute();
              },
            ),

          ),
        ],
      ),
    );
  }

  Future<void> _buildRoute() async {
    var wayPoints = <WayPoint>[];
    wayPoints.add(_origin);
    wayPoints.add(_destination);

    _controller?.buildRoute(wayPoints: wayPoints, options: _navigationOption);
  }

  Future<void> _onRouteEvent(RouteEvent e) async {
    _distanceRemaining = await MapBoxNavigation.instance.getDistanceRemaining();
    _durationRemaining = await MapBoxNavigation.instance.getDurationRemaining();

    switch (e.eventType) {
      case MapBoxEvent.progress_change:
        var progressEvent = e.data as RouteProgressEvent;
        if (progressEvent.currentStepInstruction != null) {
          _instruction = progressEvent.currentStepInstruction;
        }
        break;
      case MapBoxEvent.route_built:
        setState(() {
          _routeBuilt = true;
        });
        break;
      case MapBoxEvent.route_build_failed:
        setState(() {
          _routeBuilt = false;
        });
        break;
      case MapBoxEvent.navigation_running:
        setState(() {
          _isNavigating = true;
        });
        break;
      case MapBoxEvent.on_arrival:
        if (!_isNavigating) {
          await Future.delayed(const Duration(seconds: 3));
          await _controller?.finishNavigation();
        }
        break;
      case MapBoxEvent.navigation_finished:
      case MapBoxEvent.navigation_cancelled:
        setState(() {
          _routeBuilt = false;
          _isNavigating = false;
        });
        break;
      default:
        break;
    }
    setState(() {});
  }
}