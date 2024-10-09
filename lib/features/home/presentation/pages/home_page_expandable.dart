import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gelirx/app/extensions/context.dart';
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
  const HomePageExpandable({super.key});

  @override
  _ResizableColumnState createState() => _ResizableColumnState();
}

class _ResizableColumnState extends State<HomePageExpandable> {
  double _bottomHeight = 200;
  final double _minHeight = 100;
  late double _maxHeight;
  late double _halfHeight;
  ScrollPhysics? scrollPhysics = null;
  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    _maxHeight = MediaQuery.of(context).size.height; // Full page height
    _halfHeight = _maxHeight / 2; // Half page height

    return Scaffold(
      backgroundColor: ColorManager.white,
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
          return LayoutBuilder(
            builder: (context, constraints) {
              return Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: _bottomHeight >= _halfHeight
                        ? _halfHeight
                        : _bottomHeight,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      margin: _bottomHeight < _halfHeight
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
                            if (_bottomHeight >= _halfHeight)
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Discover ',
                                      style: context.textTheme.displaySmall!
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
                                        color: ColorManager.textTitleColor,
                                        fontSize: FontSizeManager.s26,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            const SizedBox(height: AppSize.s8),
                            Flexible(
                              child: ClipRRect(
                                borderRadius: _bottomHeight < _halfHeight
                                    ? BorderRadius.zero
                                    : BorderRadius.circular(
                                        AppSize.s30,
                                      ),
                                child: HomeMap(
                                  userPosition: userPosition,
                                ),
                              ),
                            ),
                            const SizedBox(height: AppSize.s20),
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
                                      textAlignVertical:
                                          TextAlignVertical.center,
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
                                          backgroundColor:
                                              ColorManager.lightGrey,
                                        ),
                                        onPressed: () {},
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
                    height: _bottomHeight,
                    child: GestureDetector(
                      onVerticalDragUpdate: (dragDetails) {
                        // if (!dragDetails.delta.dy.isNegative) {
                        //   print('positive: ${dragDetails.delta.dy}');
                        //   scrollPhysics = NeverScrollableScrollPhysics();
                        // } else {
                        //   scrollPhysics = null;
                        // }
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
                          if (_bottomHeight < _halfHeight * 0.75) {
                            _bottomHeight =
                                _minHeight; // Snap to minimum height
                          } else if (_bottomHeight > _halfHeight * 1.25) {
                            _bottomHeight = _maxHeight; // Snap to full height
                            scrollPhysics =
                                const AlwaysScrollableScrollPhysics();
                          } else {
                            _bottomHeight = _halfHeight; // Snap to half height
                          }
                        });
                      },
                      child: Container(
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
                            Flexible(
                              child: Column(
                                children: [
                                  state.categories.isEmpty
                                      ? const AllCategoriesLoadingPlaceholder()
                                      : AllCategoriesWidgets(
                                          categories: state.categories,
                                        ),
                                  state.catFilterIndexes.isNotEmpty
                                      ? Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: AppPadding.p8,
                                          ),
                                          child: Wrap(
                                              crossAxisAlignment:
                                                  WrapCrossAlignment.center,
                                              children: [
                                                IconButton(
                                                  onPressed: () {
                                                    context
                                                        .read<HomeBloc>()
                                                        .add(
                                                          const HomeEvent
                                                              .clearFilters(),
                                                        );
                                                  },
                                                  style: IconButton.styleFrom(
                                                    backgroundColor:
                                                        ColorManager.white,
                                                  ),
                                                  icon: Icon(
                                                    Icons.close_rounded,
                                                    size: AppSize.s24,
                                                    color: ColorManager
                                                        .textTitleColor,
                                                  ),
                                                ),
                                                ...state.catFilterIndexes.map(
                                                  (filter) => Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            AppPadding.p12),
                                                    margin:
                                                        const EdgeInsets.all(
                                                            AppMargin.m4),
                                                    decoration: BoxDecoration(
                                                      color: ColorManager.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        AppSize.s20,
                                                      ),
                                                    ),
                                                    child: Text(
                                                      filter.name,
                                                      style: context.textTheme
                                                          .labelMedium,
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                        )
                                      : const SizedBox(height: AppSize.s16),
                                  const SizedBox(height: AppSize.s8),
                                  Flexible(
                                    child: NotificationListener<
                                        ScrollNotification>(
                                      onNotification: (scrollNotification) {
                                        if (scrollNotification
                                            is ScrollUpdateNotification) {
                                          print(scrollNotification
                                              .metrics.pixels);
                                          if (scrollNotification
                                                  .metrics.pixels ==
                                              0.0) {
                                            print('stop');
                                            // At the top of the scroll view
                                            setState(() {
                                              scrollPhysics =
                                                  const NeverScrollableScrollPhysics();
                                            });
                                          } else {
                                            // Not at the top, allow scrolling
                                            setState(() {
                                              scrollPhysics =
                                                  const AlwaysScrollableScrollPhysics();
                                            });
                                          }
                                        }
                                        return false;
                                      },
                                      child: SingleChildScrollView(
                                        controller: controller,
                                        physics: scrollPhysics,
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
                                ],
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
          );
        },
      ),
    );
  }
}
