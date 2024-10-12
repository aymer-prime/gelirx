import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/extensions/double_extensions.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/presentation/bloc/home_bloc.dart';
import 'package:gelirx/features/home/presentation/widgets/home_content.dart';
import 'package:gelirx/features/home/presentation/widgets/home_map_widget.dart';
import 'package:gelirx/features/shared/widgets/dialogs/loading_screen.dart';

class HomeExpandablePage extends StatefulWidget {
  final VoidCallback hideBottomNavBar;
  final VoidCallback showBottomNavBar;
  const HomeExpandablePage({
    super.key,
    required this.hideBottomNavBar,
    required this.showBottomNavBar,
  });

  @override
  State<HomeExpandablePage> createState() => _HomeExpandablePageState();
}

class _HomeExpandablePageState extends State<HomeExpandablePage>
    with SingleTickerProviderStateMixin {
  final DraggableScrollableController _controller =
      DraggableScrollableController();
  final minSize = 0.1;
  final maxSize = 1.0;
  late double _bottomHeight;
  late double _maxHeight;
  late double _halfHeight;
  late AnimationController titleAnimationController;
  late Animation<double> titleFadeAnimation;
  late Animation<double> titleTransitionAnimation;
  late Animation<double> mapRadiusAnimation;

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

  @override
  void initState() {
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
    _controller.addListener(() {
      if (_controller.size < 0.5) {
        setState(() {
          _bottomHeight = _controller.pixels;
        });
      }
      if (_controller.size <= 0.2) {
        widget.hideBottomNavBar();
        titleAnimationController.forward();
        setState(() {});
      } else if (_controller.size >= 0.4) {
        widget.showBottomNavBar();
        setState(() {});
      } else if (_controller.size >= 0.2) {
        titleAnimationController.animateBack(0.0);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: !_controller.isAttached
          ? null
          : _controller.pixels < _maxHeight
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
                          _controller.animateTo(
                            0.5,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.linear,
                          );
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
              Positioned.fill(
                bottom: _bottomHeight,
                left: 0,
                right: 0,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: _bottomHeight <= _maxHeight * 0.2
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
                          height: _bottomHeight.normalize(
                                  _maxHeight * 0.02, _halfHeight) *
                              80, //(_bottomHeight <= _maxHeight * 0.2) ? 0 : 80,
                          child: AnimatedBuilder(
                              animation: Listenable.merge(
                                [
                                  titleFadeAnimation,
                                  //titleTransitionAnimation,
                                ],
                              ),
                              builder: (_, child) {
                                return Transform.translate(
                                  offset: Offset(
                                    0,
                                    _bottomHeight.normalize(
                                            _halfHeight, _maxHeight * 0.1) *
                                        -160,
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
                                    onMasterTap: () {
                                      _controller.animateTo(
                                        minSize,
                                        duration:
                                            const Duration(milliseconds: 300),
                                        curve: Curves.linear,
                                      );
                                      titleAnimationController.forward();
                                    },
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              DraggableScrollableSheet(
                controller: _controller,
                initialChildSize: 0.5,
                minChildSize: minSize,
                maxChildSize: maxSize,
                expand: true,
                snap: true,
                snapSizes: const [
                  0.1,
                  0.5,
                ],
                snapAnimationDuration: const Duration(milliseconds: 300),
                builder: (context, scrollController) => Container(
                  height: _bottomHeight,
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppPadding.p16,
                  ),
                  color: ColorManager.white,
                  child: ListView(
                    shrinkWrap: true,
                    controller: scrollController,
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
                      HomeContent(
                        categories: state.categories,
                        topCategories: state.services
                            .expand((obj) => obj.subSkill)
                            .toList(),
                        services: state.services,
                        filters: state.catFilterIndexes,
                      )
                    ],
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
