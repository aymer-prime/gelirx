import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gelirx/app/extentions/List.dart';
import 'package:gelirx/app/extentions/context.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/domain/entities/category.dart';
import 'package:gelirx/features/home/presentation/bloc/home_bloc.dart';
import 'package:gelirx/features/home/presentation/misc/functions.dart';
import 'package:gelirx/features/home/presentation/widgets/card_label_widget.dart';
import 'package:gelirx/features/home/presentation/widgets/filter_widget.dart';
import 'package:gelirx/features/home/presentation/widgets/range_edit_widget.dart';

class HomeDraggableSheet extends StatefulWidget {
  final List<Category> categories;
  final List<Category> subCategories;
  final int catIndex;
  final int subCatIndex;
  const HomeDraggableSheet({
    super.key,
    required this.categories,
    required this.subCategories,
    required this.catIndex,
    required this.subCatIndex,
  });

  @override
  State<HomeDraggableSheet> createState() => _HomeDraggableSheetState();
}

class _HomeDraggableSheetState extends State<HomeDraggableSheet> {
  final _sheet = GlobalKey();
  final _controller = DraggableScrollableController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onChanged);
  }

  void _onChanged() {
    final currentSize = _controller.size;
    if (currentSize <= 0.05) _collapse();
  }

  void _collapse() => _animateSheet(sheet.snapSizes!.first);

  void _anchor() => _animateSheet(sheet.snapSizes!.last);

  void _expand() => _animateSheet(sheet.maxChildSize);

  void _hide() => _animateSheet(sheet.minChildSize);

  void _animateSheet(double size) {
    _controller.animateTo(
      size,
      duration: const Duration(milliseconds: 50),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  DraggableScrollableSheet get sheet =>
      (_sheet.currentWidget as DraggableScrollableSheet);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return DraggableScrollableSheet(
        key: _sheet,
        initialChildSize: 0.5,
        maxChildSize: 1,
        minChildSize: 0,
        expand: true,
        snap: true,
        snapSizes: [
          60 / constraints.maxHeight,
          0.5,
        ],
        controller: _controller,
        builder: (BuildContext context, ScrollController scrollController) {
          return DecoratedBox(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppSize.s32),
                topRight: Radius.circular(AppSize.s32),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: AppPadding.p8,
                horizontal: AppPadding.p16,
              ),
              child: CustomScrollView(
                controller: scrollController,
                slivers: [
                  SliverToBoxAdapter(
                    child: Center(
                      child: Container(
                        height: AppSize.s4,
                        width: AppSize.s64,
                        decoration: BoxDecoration(
                            color: ColorManager.lightPrimary,
                            borderRadius: BorderRadius.circular(
                              AppSize.s4,
                            )),
                      ),
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(height: AppSize.s24),
                  ),
                  const SliverToBoxAdapter(
                    child: CardLabelWidget(label: 'Edit Range'),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(height: AppSize.s16),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppPadding.p16,
                      ),
                      child: RangeEditWidget(
                        label: AppStrings.range,
                        range: context.read<HomeBloc>().state.range,
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: AppPadding.p16,
                        horizontal: AppPadding.p32,
                      ),
                      child: Divider(
                        thickness: AppSize.s1,
                        color: ColorManager.textfieldBorderColor,
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: (widget.categories.isEmpty ||
                            widget.subCategories.isEmpty)
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : SizedBox(
                            height: AppSize.s80,
                            child: Row(
                              children: [
                                Flexible(
                                  child: Column(
                                    children: [
                                      const CardLabelWidget(
                                          label: AppStrings.cats),
                                      const SizedBox(height: AppSize.s16),
                                      FilterWidget(
                                        title: widget
                                            .categories[widget.catIndex].name,
                                        data: widget.categories,
                                        currentFilterIndex: widget.catIndex,
                                        onSelect: (int index) {
                                          context.read<HomeBloc>().add(
                                                HomeEvent.getSubCategories(
                                                  catIndex: index,
                                                ),
                                              );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: AppSize.s16),
                                Flexible(
                                  child: Column(
                                    children: [
                                      const CardLabelWidget(
                                          label: AppStrings.subCats),
                                      const SizedBox(height: AppSize.s16),
                                      FilterWidget(
                                        title: widget
                                            .subCategories[widget.subCatIndex]
                                            .name,
                                        data: widget.subCategories,
                                        currentFilterIndex: 0,
                                        onSelect: (int index) {},
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                    //  CategoriesGridWidget(
                    //     categories: widget.categories,
                    //   ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: AppPadding.p16,
                        horizontal: AppPadding.p32,
                      ),
                      child: Divider(
                        thickness: AppSize.s1,
                        color: ColorManager.textfieldBorderColor,
                      ),
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: CardLabelWidget(
                      label: AppStrings.services,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        ServiceWidget(),
                        ServiceWidget(),
                        ServiceWidget(),
                        ServiceWidget(),
                        ServiceWidget(),
                      ].separateWith(
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: AppPadding.p8,
                            horizontal: AppPadding.p32,
                          ),
                          child: Divider(
                            thickness: AppSize.s1,
                            color: ColorManager.textfieldBorderColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    });
  }
}

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppPadding.p8,
      ),
      child: SizedBox(
        height: AppSize.s100,
        child: Row(
          children: [
            Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: Container(
                  height: double.infinity,
                  decoration: BoxDecoration(
                      color: getCategoryColor(),
                      borderRadius: BorderRadius.circular(
                        AppSize.s12,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppPadding.p16,
                    ),
                    child: SvgPicture.asset(ImageAssets.acIcon),
                  )),
            ),
            const SizedBox(width: AppSize.s16),
            Flexible(
              flex: 7,
              fit: FlexFit.tight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(ImageAssets.star),
                          const SizedBox(width: AppSize.s4),
                          Text(
                            '4.8',
                            style: context.textTheme.labelMedium,
                          ),
                          const SizedBox(width: AppSize.s4),
                          Text(
                            '(87)',
                            style: context.textTheme.labelSmall,
                          ),
                        ],
                      ),
                      Text(
                        'AC Check-Up',
                        style: context.textTheme.labelLarge,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Starts from:',
                        style: context.textTheme.labelSmall,
                      ),
                      const SizedBox(height: AppSize.s16),
                      Container(
                        padding: const EdgeInsets.all(AppPadding.p6),
                        decoration: BoxDecoration(
                          color: ColorManager.priceLabel,
                          borderRadius: BorderRadius.circular(
                            AppSize.s8,
                          ),
                        ),
                        child: Text(
                          '\$128',
                          style: context.textTheme.labelMedium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
