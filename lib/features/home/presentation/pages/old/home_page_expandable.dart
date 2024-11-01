import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/presentation/bloc/home_bloc.dart';
import 'package:gelirx/features/home/presentation/widgets/home_content.dart';
import 'package:gelirx/features/home/presentation/widgets/home_map_widget.dart';
import 'package:gelirx/features/home/presentation/widgets/top_categories_widget.dart';
import 'package:gelirx/features/shared/widgets/dialogs/loading_screen.dart';

class HomePageExpandable extends StatefulWidget {
  final VoidCallback hideBottomNavBar;
  final VoidCallback showBottomNavBar;
  const HomePageExpandable({
    super.key,
    required this.hideBottomNavBar,
    required this.showBottomNavBar,
  });

  @override
  _ResizableColumnState createState() => _ResizableColumnState();
}

class _ResizableColumnState extends State<HomePageExpandable>
    with SingleTickerProviderStateMixin {
  final double _minHeight = AppSize.s80;
  late double _bottomHeight;
  late double _maxHeight;
  late double _halfHeight;
  int duration = 1;
  ScrollPhysics? scrollPhysics;
  final ScrollController controller = ScrollController();
  late AnimationController titleAnimationController;
  late Animation<double> titleFadeAnimation;
  late Animation<double> titleTransitionAnimation;
  late Animation<double> mapRadiusAnimation;

  @override
  void initState() {
    super.initState();
    titleAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    titleFadeAnimation = Tween<double>(
      begin: 1.0,
      end: 0.0,
    ).animate(
      titleAnimationController,
    );
    titleTransitionAnimation = Tween<double>(
      begin: 0.0,
      end: -100,
    ).animate(
      titleAnimationController,
    );
    mapRadiusAnimation = Tween<double>(
      begin: 30.0,
      end: 0.0,
    ).animate(
      titleAnimationController,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    var appBarHight = Scaffold.of(
          context,
        ).appBarMaxHeight ??
        0;
    _maxHeight = MediaQuery.of(context).size.height - appBarHight;
    _halfHeight = _maxHeight / 2;
    _bottomHeight = _halfHeight;
  }

  void snapToMinHeight() {
    widget.hideBottomNavBar();
    setState(() {
      _bottomHeight = _minHeight;
      titleAnimationController.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: _bottomHeight != _maxHeight
          ? null
          : Padding(
              padding: const EdgeInsets.only(bottom: AppSize.s100),
              child: SizedBox(
                height: AppSize.s32,
                child: FloatingActionButton.extended(
                  shape: const StadiumBorder(),
                  backgroundColor: ColorManager.black,
                  foregroundColor: Colors.black,
                  onPressed: () {
                    setState(() {
                      _bottomHeight = _halfHeight;
                    });
                  },
                  icon: Icon(
                    Icons.map_outlined,
                    color: ColorManager.white,
                    size: AppSize.s20,
                  ),
                  label: Text(
                    'Map',
                    style: context.textTheme.labelSmall!.copyWith(
                        color: ColorManager.white,
                        fontSize: FontSizeManager.s10),
                  ),
                ),
              ),
            ),
      body: BlocConsumer<HomeBloc, HomeState>(
        listenWhen: (previous, current) =>
            previous.isLoading != current.isLoading,
        listener: (context, state) {
          if (state.isLoading) {
            LoadingScreen.instance().showLoadingScreen(
              context: context,
              text: 'Loading . . .',
            );
          } else {
            LoadingScreen.instance().hide();
          }
        },
        builder: (context, state) {
          return Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom:
                    _bottomHeight >= _halfHeight ? _halfHeight : _bottomHeight,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: _bottomHeight == _minHeight
                      ? EdgeInsets.zero
                      : const EdgeInsets.symmetric(
                          horizontal: AppPadding.p16,
                        ),
                  child: state.userPosition.fold(
                    () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    (userPosition) => Column(
                      children: [
                        SizedBox(
                          height: (_bottomHeight == _minHeight) ? 0 : 80,
                          child: AnimatedBuilder(
                              animation: Listenable.merge(
                                [
                                  titleFadeAnimation,
                                  titleTransitionAnimation,
                                ],
                              ),
                              builder: (_, child) {
                                return Transform.translate(
                                  offset: Offset(
                                    0,
                                    titleTransitionAnimation.value,
                                  ),
                                  child: FadeTransition(
                                    opacity: titleFadeAnimation,
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Discover ',
                                            style: context
                                                .textTheme.displaySmall!
                                                .copyWith(
                                              color: ColorManager.joyColor,
                                              fontSize: FontSizeManager.s26,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                'the best, highest quality services near you',
                                            style: context.textTheme.titleSmall!
                                                .copyWith(
                                              color:
                                                  ColorManager.textTitleColor,
                                              fontSize: FontSizeManager.s26,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                        const SizedBox(height: AppSize.s8),
                        Flexible(
                          child: AnimatedBuilder(
                              animation: Listenable.merge([mapRadiusAnimation]),
                              builder: (context, child) {
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    mapRadiusAnimation.value,
                                  ),
                                  child: HomeMap(
                                    userPosition: userPosition,
                                    onMasterTap: snapToMinHeight,
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Bottom widget (resizable and draggable)
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: GestureDetector(
                  onVerticalDragStart: (details) {
                    if (duration != 0) {
                      setState(() {
                        duration = 0;
                      });
                    }
                  },
                  onVerticalDragUpdate: (dragDetails) {
                    setState(() {
                      _bottomHeight -= dragDetails.delta.dy;
                      // Limit the bottomHeight between _minHeight and full height (_maxHeight)
                      _bottomHeight =
                          _bottomHeight.clamp(_minHeight, _maxHeight);
                    });
                  },
                  onVerticalDragEnd: (dragDetails) {
                    setState(() {
                      // Snap the bottomHeight based on drag position
                      duration = 300;
                      if (_bottomHeight < _halfHeight * 0.75) {
                        _bottomHeight = _minHeight; // Snap to minimum height
                        titleAnimationController.forward();
                        widget.hideBottomNavBar();
                      } else if (_bottomHeight > _halfHeight * 1.4) {
                        widget.showBottomNavBar();
                        titleAnimationController.animateBack(0.0);
                        _bottomHeight = _maxHeight; // Snap to full height
                        scrollPhysics = const AlwaysScrollableScrollPhysics();
                      } else {
                        widget.showBottomNavBar();
                        titleAnimationController.animateBack(0.0);
                        _bottomHeight = _halfHeight; // Snap to half height
                      }
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: duration),
                    height: _bottomHeight,
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppPadding.p16,
                    ),
                    color: ColorManager.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(height: AppSize.s8),
                        Center(
                          child: Container(
                            height: AppSize.s4,
                            width: AppSize.s64,
                            decoration: BoxDecoration(
                              color: ColorManager.lightGrey,
                              borderRadius: BorderRadius.circular(
                                AppSize.s4,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: AppSize.s8),
                        SizedBox(
                          height: 40,
                          child: Row(
                            children: [
                              Flexible(
                                flex: 6,
                                child: TextField(
                                  onTapOutside: (_) => FocusManager
                                      .instance.primaryFocus
                                      ?.unfocus(),
                                  textAlignVertical: TextAlignVertical.center,
                                  decoration: InputDecoration(
                                    fillColor: ColorManager.lightGrey,
                                    hintText: AppStrings.searchHint,
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: AppPadding.p12,
                                      ),
                                      child: SvgPicture.asset(
                                        ImageAssets.searchIcon,
                                        fit: BoxFit.fitHeight,
                                        colorFilter: ColorFilter.mode(
                                          ColorManager.textTitleColor,
                                          BlendMode.srcIn,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: AppSize.s8),
                              Flexible(
                                flex: 1,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: ColorManager.lightGrey,
                                    ),
                                    onPressed: () {
                                      // context.router
                                      //     .push(const BookingDetailsRoute());
                                    },
                                    child: SvgPicture.asset(
                                      ImageAssets.filterIcon,
                                      height: AppSize.s16,
                                      color: ColorManager.textTitleColor,
                                    )),
                              ),
                              const SizedBox(width: AppSize.s8),
                              Flexible(
                                flex: 1,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: ColorManager.lightGrey,
                                  ),
                                  onPressed: () {},
                                  child: SvgPicture.asset(
                                    ImageAssets.sortIcon,
                                    height: AppSize.s16,
                                    color: ColorManager.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: AppSize.s10),
                        Flexible(
                          child: NotificationListener<
                              OverscrollIndicatorNotification>(
                            onNotification: (overScrollNotification) {
                              overScrollNotification.disallowIndicator();
                              if (overScrollNotification.leading) {
                                setState(() {
                                  scrollPhysics =
                                      const NeverScrollableScrollPhysics();
                                });
                              }
                              return true;
                            },
                            child: NotificationListener<ScrollNotification>(
                              onNotification: (scrollNotification) {
                                // if (scrollNotification
                                //         is UserScrollNotification &&
                                //     scrollNotification.direction ==
                                //         ScrollDirection.reverse) {
                                //   scrollPhysics =
                                //       const AlwaysScrollableScrollPhysics();
                                // } else if (scrollNotification
                                //         is UserScrollNotification &&
                                //     scrollNotification.direction ==
                                //         ScrollDirection.forward) {
                                //   if (scrollNotification.metrics.pixels ==
                                //       0.0) {
                                //     setState(() {
                                //       scrollPhysics =
                                //           const NeverScrollableScrollPhysics();
                                //     });
                                //   }
                                // }
                                if (scrollNotification
                                    is ScrollUpdateNotification) {
                                  if (scrollNotification.metrics.pixels ==
                                      0.0) {
                                    setState(() {
                                      scrollPhysics =
                                          const NeverScrollableScrollPhysics();
                                    });
                                  } else {
                                    setState(() {
                                      scrollPhysics =
                                          const AlwaysScrollableScrollPhysics();
                                    });
                                  }
                                }
                                return true;
                              },
                              child: SingleChildScrollView(
                                controller: controller,
                                physics: _bottomHeight != _maxHeight
                                    ? NeverScrollableScrollPhysics()
                                    : scrollPhysics,
                                child: HomeContent(
                                  categories: state.categories,
                                  topCategories: state.services
                                      .expand((obj) => obj.subSkill)
                                      .toList(),
                                  services: state.services,
                                  filters: state.catFilterIndexes,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
