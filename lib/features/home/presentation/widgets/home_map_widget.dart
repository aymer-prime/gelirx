import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/domain/entities/master.dart';
import 'package:gelirx/features/home/presentation/bloc/home_bloc.dart';
import 'package:gelirx/features/home/presentation/misc/tile_provider.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:lottie/lottie.dart' show Lottie;

class HomeMap extends StatefulWidget {
  final Position userPosition;

  HomeMap({
    super.key,
    required this.userPosition,
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
            initialZoom: 14,
            minZoom: 13,
          ),
          children: [
            openStreetMapTileLayer,
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
                  width: AppSize.s80.w,
                  child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          backgroundColor: ColorManager.white,
                          isScrollControlled: true,
                          builder: (BuildContext context) {
                            return MasterInfoSheet(
                              master: master,
                            );
                          },
                        );
                      },
                      child: Column(
                        children: [
                          Flexible(
                            child: Container(
                              //padding: const EdgeInsets.all(AppPadding.p3),
                              decoration: ShapeDecoration(
                                color: ColorManager.white,
                                shape: const StadiumBorder(),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Flexible(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: CachedNetworkImageProvider(
                                              master.categories.first.photo,
                                            ),
                                          )),
                                    ),
                                  ),
                                  Flexible(
                                    child: SvgPicture.asset(ImageAssets.star),
                                  ),
                                  Flexible(
                                    child: Text(master.point),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SvgPicture.asset(
                            ImageAssets.caretDown,
                            height: 5,
                            colorFilter: ColorFilter.mode(
                              ColorManager.white,
                              BlendMode.srcIn,
                            ),
                          ),
                        ],
                      )
                      //Image.asset(ImageAssets.masterMarker),
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
                      14,
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

class MasterInfoSheet extends StatelessWidget {
  final Master master;
  const MasterInfoSheet({super.key, required this.master});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p16,
          vertical: AppPadding.p8,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: AppSize.s4,
                width: AppSize.s64,
                decoration: BoxDecoration(
                  color: ColorManager.lightPrimary,
                  borderRadius: BorderRadius.circular(
                    AppSize.s4,
                  ),
                ),
              ),
            ),
            const SizedBox(height: AppSize.s16),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.all(AppSize.s4),
                decoration: BoxDecoration(
                  color: ColorManager.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: ColorManager.textTitleLightColor,
                  ),
                ),
                child: const Icon(
                  Icons.arrow_back_ios_rounded,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(AppPadding.p16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: AppSize.s40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: ColorManager.darkPrimary,
                            ),
                          ),
                          child: Image.asset(
                            ImageAssets.masterIcon,
                          ),
                        ),
                        const SizedBox(width: AppSize.s8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Text(
                            //   master.name,
                            //   style: context.textTheme.titleLarge,
                            // ),
                            const SizedBox(width: AppSize.s8),
                            Row(
                              children: [
                                SvgPicture.asset(ImageAssets.star),
                                const SizedBox(width: AppSize.s4),
                                Text(
                                  master.point,
                                  style: context.textTheme.labelMedium,
                                ),
                                const SizedBox(width: AppSize.s4),
                                Text(
                                  '(87)',
                                  style: context.textTheme.labelSmall,
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: AppSize.s16),
                    Text(
                      'Phone Number',
                      style: context.textTheme.labelLarge,
                    ),
                    // Container(
                    //   //height: AppSize.s60,
                    //   width: double.infinity,
                    //   padding: const EdgeInsets.all(AppPadding.p16),
                    //   decoration: BoxDecoration(
                    //     color: ColorManager.textfieldFillColor,
                    //     borderRadius: BorderRadius.circular(AppSize.s12),
                    //     border: Border.all(
                    //       color: ColorManager.textfieldBorderColor,
                    //     ),
                    //   ),
                    //   child: Text(master.phone),
                    // ),
                    const SizedBox(height: AppSize.s16),
                    Text(
                      'Year of Birth',
                      style: context.textTheme.labelLarge,
                    ),
                    Container(
                      //height: AppSize.s60,
                      width: double.infinity,
                      padding: const EdgeInsets.all(AppPadding.p16),
                      decoration: BoxDecoration(
                        color: ColorManager.textfieldFillColor,
                        borderRadius: BorderRadius.circular(AppSize.s12),
                        border: Border.all(
                          color: ColorManager.textfieldBorderColor,
                        ),
                      ),
                      child: const Text('1956'),
                    ),
                    const SizedBox(height: AppSize.s16),
                    Text(
                      'E-mail',
                      style: context.textTheme.labelLarge,
                    ),
                    Container(
                      //height: AppSize.s60,
                      width: double.infinity,
                      padding: const EdgeInsets.all(AppPadding.p16),
                      decoration: BoxDecoration(
                        color: ColorManager.textfieldFillColor,
                        borderRadius: BorderRadius.circular(AppSize.s12),
                        border: Border.all(
                          color: ColorManager.textfieldBorderColor,
                        ),
                      ),
                      child: const Text('abc@outlook.com'),
                    ),
                    const SizedBox(height: AppSize.s16),
                    Text(
                      'Skills',
                      style: context.textTheme.labelLarge,
                    ),
                    Container(
                      padding: const EdgeInsets.all(AppPadding.p8),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: ColorManager.textfieldFillColor,
                        borderRadius: BorderRadius.circular(AppSize.s8),
                        border: Border.all(
                            color: ColorManager.textfieldBorderColor),
                      ),
                      child: master.categories.isEmpty
                          ? const Text('you must choose at least one skill')
                          : Wrap(
                              children: master.categories
                                  .map(
                                    (e) => Container(
                                      padding:
                                          const EdgeInsets.all(AppPadding.p6),
                                      margin:
                                          const EdgeInsets.all(AppMargin.m4),
                                      decoration: BoxDecoration(
                                        color: ColorManager.white,
                                        border: Border.all(
                                          color:
                                              ColorManager.textfieldBorderColor,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          AppSize.s12,
                                        ),
                                      ),
                                      child: Wrap(
                                        children: [
                                          // Text(
                                          //   e.name,
                                          //   style:
                                          //       context.textTheme.labelMedium,
                                          // ),
                                        ],
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                    ),
                    const SizedBox(height: AppSize.s16),
                    SizedBox(
                      height: AppSize.s48,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Call'),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
