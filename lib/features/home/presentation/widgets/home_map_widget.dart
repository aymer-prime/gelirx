import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gelirx/app/extensions/List.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/domain/entities/master.dart';
import 'package:gelirx/features/home/presentation/bloc/home_bloc.dart';
import 'package:gelirx/features/home/presentation/misc/tile_provider.dart';
import 'package:gelirx/features/home/presentation/widgets/master_info_sheet.dart';
import 'package:gelirx/features/master/presentation/page/master_page.dart';
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
                  width: AppSize.s60.w,
                  child: GestureDetector(
                      onTap: () {
                        widget.onMasterTap();
                        showDialog(
                          context: context,
                          barrierColor: Colors.transparent,
                          builder: (BuildContext context) {
                            return MasterDetailsDialog(
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

class MasterDetailsDialog extends StatelessWidget {
  final Master master;
  const MasterDetailsDialog({
    super.key,
    required this.master,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      alignment: Alignment.bottomCenter,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: SizedBox(
          height: 300 + 32,
          child: Stack(
            children: [
              Positioned.fill(
                bottom: 32,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.transparent,
                  child: GestureDetector(
                    onTap: () {
                      context.router.replace( MasterRoute());
                    },
                    child: Container(
                      padding: const EdgeInsets.all(AppPadding.p15),
                      margin: const EdgeInsets.symmetric(
                        horizontal: AppPadding.p32,
                      ),
                      decoration: BoxDecoration(
                        color: ColorManager.blueColor,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: Stack(
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      AppSize.s16,
                                    ),
                                    child: Image.asset(
                                      ImageAssets.tesisat,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      style: IconButton.styleFrom(
                                        shape: const CircleBorder(),
                                        backgroundColor: ColorManager.white,
                                      ),
                                      icon: const Icon(
                                        FontAwesomeIcons.heart,
                                        size: 16,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      style: IconButton.styleFrom(
                                        shape: const CircleBorder(),
                                        backgroundColor: ColorManager.white,
                                      ),
                                      icon: const Icon(
                                        FontAwesomeIcons.xmark,
                                        size: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: AppSize.s10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Osman Yancıgil',
                                style: getRegularStyle(
                                  color: ColorManager.white,
                                  fontSize: FontSizeManager.s20,
                                ),
                              ),
                              const SizedBox(height: AppSize.s10),
                              Text(
                                'Petek Temizliği, Ev Temizliği, Evden Eve Nakliyat',
                                style: context.textTheme.bodyMedium!.copyWith(
                                  color: ColorManager.lightGreyText,
                                ),
                              ),
                              const SizedBox(height: AppSize.s12),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        ImageAssets.star,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: ' 4.1 ',
                                              style: context
                                                  .textTheme.bodyMedium!
                                                  .copyWith(
                                                color: ColorManager.white,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '(27)',
                                              style: context
                                                  .textTheme.bodyMedium!
                                                  .copyWith(
                                                color:
                                                    ColorManager.lightGreyText,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: AppSize.s30),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: ColorManager.white,
                                        size: AppSize.s14,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '35 Km ',
                                              style: context
                                                  .textTheme.bodyMedium!
                                                  .copyWith(
                                                color: ColorManager.white,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '(Yaklaşık 40 dk)',
                                              style: context
                                                  .textTheme.bodyMedium!
                                                  .copyWith(
                                                color:
                                                    ColorManager.lightGreyText,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
