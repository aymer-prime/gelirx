import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/domain/entities/master.dart';
import 'package:gelirx/features/home/presentation/bloc/home_bloc.dart';
import 'package:gelirx/features/home/presentation/misc/tile_provider.dart';
import 'package:gelirx/features/home/presentation/widgets/dialogs/master_dialog_screen.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:lottie/lottie.dart' show Lottie;

class HomeMap extends StatefulWidget {
  final Position userPosition;
  final VoidCallback onMasterTap;

  HomeMap({
    super.key,
    required this.userPosition,
    required this.onMasterTap,
  });

  @override
  State<HomeMap> createState() => _HomeMapState();
}

class _HomeMapState extends State<HomeMap> with TickerProviderStateMixin {
  static const _startedId = 'AnimatedMapController#MoveStarted';
  static const _inProgressId = 'AnimatedMapController#MoveInProgress';
  static const _finishedId = 'AnimatedMapController#MoveFinished';
  final mapController = MapController();

  void _animatedMapMove(LatLng destLocation, double destZoom) {
    // Create some tweens. These serve to split up the transition from one location to another.
    // In our case, we want to split the transition be<tween> our current map center and the destination.
    final camera = mapController.camera;
    final latTween = Tween<double>(
        begin: camera.center.latitude, end: destLocation.latitude);
    final lngTween = Tween<double>(
        begin: camera.center.longitude, end: destLocation.longitude);
    final zoomTween = Tween<double>(begin: camera.zoom, end: destZoom);

    // Create a animation controller that has a duration and a TickerProvider.
    final controller = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
    // The animation determines what path the animation will take. You can try different Curves values, although I found
    // fastOutSlowIn to be my favorite.
    final Animation<double> animation =
        CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn);

    // Note this method of encoding the target destination is a workaround.
    // When proper animated movement is supported (see #1263) we should be able
    // to detect an appropriate animated movement event which contains the
    // target zoom/center.
    final startIdWithTarget =
        '$_startedId#${destLocation.latitude},${destLocation.longitude},$destZoom';
    bool hasTriggeredMove = false;

    controller.addListener(() {
      final String id;
      if (animation.value == 1.0) {
        id = _finishedId;
      } else if (!hasTriggeredMove) {
        id = startIdWithTarget;
      } else {
        id = _inProgressId;
      }

      hasTriggeredMove |= mapController.move(
        LatLng(latTween.evaluate(animation), lngTween.evaluate(animation)),
        zoomTween.evaluate(animation),
        id: id,
      );
    });

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.dispose();
      } else if (status == AnimationStatus.dismissed) {
        controller.dispose();
      }
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return FlutterMap(
          mapController: mapController,
          options: MapOptions(
            backgroundColor: const Color(0xffFFFDD0),
            onMapEvent: (mapEvent) {
              if (mapEvent is MapEventMoveEnd) {
                final newCenter = mapEvent.camera.center;
                context.read<HomeBloc>().add(
                      HomeEvent.getMasters(newCenter),
                    );
              }
            },
            initialCenter: LatLng(
              widget.userPosition.latitude,
              widget.userPosition.longitude,
            ),
            initialZoom: 12,
            minZoom: 12,
          ),
          children: [
            Opacity(
              opacity: 0.65,
              child: openStreetMapTileLayer,
            ),
            MarkerLayer(
              markers: [
                Marker(
                    point: LatLng(
                      widget.userPosition.latitude,
                      widget.userPosition.longitude,
                    ),
                    width: 20,
                    height: 20,
                    child: Lottie.asset(
                      JsonAssets.mapPointer,
                    )),
              ],
            ),
            MarkerLayer(
              markers: state.masters.map((master) {
                return Marker(
                  rotate: true,
                  point: LatLng(master.latitude, master.longitude),
                  width: AppSize.s60.w,
                  child: MapBubbleMarker(
                    master: master,
                    isSelected: master.id ==
                        context.read<HomeBloc>().state.selectedMasterId,
                    onTap: () {
                      widget.onMasterTap();
                    },
                  ),
                );
              }).toList(),
            ),
            Padding(
              padding: const EdgeInsets.all(AppPadding.p10),
              child: Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  mini: true,
                  onPressed: () {
                    _animatedMapMove(
                      LatLng(
                        widget.userPosition.latitude,
                        widget.userPosition.longitude,
                      ),
                      12,
                    );
                  },
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.my_location_rounded,
                    color: ColorManager.textTitleColor,
                    size: AppSize.s15,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class MapBubbleMarker extends StatelessWidget {
  const MapBubbleMarker({
    super.key,
    required this.master,
    required this.isSelected,
    required this.onTap,
  });

  final Master master;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTap();
          context.read<HomeBloc>().add(
                HomeEvent.selectMaster(master.id),
              );
          MasterDialogScreen.instance()
              .showMasterDialog(context: context, master: master);
          // showDialog(
          //   context: context,
          //   barrierColor: Colors.transparent,
          //   builder: (BuildContext context) {
          //     return MasterDetailsDialog(
          //       master: master,
          //     );
          //   },
          // );
        },
        child: Column(
          children: [
            Flexible(
              child: Container(
                padding: const EdgeInsets.all(AppPadding.p4),
                decoration: ShapeDecoration(
                  color: master.id ==
                          context.read<HomeBloc>().state.selectedMasterId
                      ? ColorManager.blueColor
                      : ColorManager.white,
                  shadows: [
                    BoxShadow(
                      blurRadius: 1,
                      spreadRadius: 0,
                      offset: const Offset(1, 1),
                      color: Color.fromARGB((255 * 0.2).floor(), 0, 0, 0),
                    )
                  ],
                  shape: const StadiumBorder(),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      child: Container(
                        padding: const EdgeInsets.all(AppPadding.p4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isSelected
                              ? ColorManager.white
                              : ColorManager.joyColor,
                          // image: DecorationImage(
                          //   image: CachedNetworkImageProvider(
                          //     master.categories.first.photo,
                          //   ),
                          // ),
                        ),
                        child: Icon(
                          FontAwesomeIcons.wrench,
                          size: 8,
                          color: isSelected
                              ? ColorManager.blueColor
                              : ColorManager.white,
                        ),
                      ),
                    ),
                    Flexible(
                      child: SvgPicture.asset(ImageAssets.star),
                    ),
                    Flexible(
                      child: Text(
                        (math.Random().nextDouble() * 5).toStringAsFixed(1),
                        style: getMediumStyle(
                          color: isSelected
                              ? ColorManager.white
                              : ColorManager.blueColor,
                          fontSize: FontSizeManager.s12,
                        ),
                      ), //Text(master.point),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 6,
              child: Stack(
                children: [
                  Positioned(
                    top: 2.0,
                    child: SvgPicture.asset(
                      ImageAssets.caretDown,
                      height: 3.5,
                      colorFilter: ColorFilter.mode(
                        Color.fromARGB((255 * 0.2).floor(), 0, 0, 0),
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  SvgPicture.asset(
                    ImageAssets.caretDown,
                    height: 3.5,
                    colorFilter: ColorFilter.mode(
                      isSelected ? ColorManager.blueColor : ColorManager.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
        //Image.asset(ImageAssets.masterMarker),
        );
  }
}
