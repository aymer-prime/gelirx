import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gelirx/app/extensions/List.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/domain/entities/category.dart';
import 'package:gelirx/features/home/presentation/widgets/top_categories_widget.dart';
import 'package:gelirx/features/shared/widgets/card_label_widget.dart';
import 'package:gelirx/features/home/presentation/widgets/category_item.dart';
import 'package:gelirx/features/home/presentation/widgets/sevice_widget.dart';

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
        minChildSize: 0.5,
        expand: true,
        snap: true,
        snapSizes: [
          //0.2,
          0.5,
        ],
        controller: _controller,
        builder: (BuildContext context, ScrollController scrollController) {
          return DecoratedBox(
            decoration: BoxDecoration(
              color: ColorManager.background,
              borderRadius: const BorderRadius.only(
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
                  SliverToBoxAdapter(
                    child: SizedBox(
                      child: Column(
                        children: [
                          const SizedBox(height: AppSize.s16),
                          widget.categories.isEmpty
                              ? const Center(
                                  child: CircularProgressIndicator(),
                                )
                              : TopCategoriesWidgets(
                                  categories: widget.categories,
                                ),
                          const SizedBox(height: AppSize.s16),
                          Row(
                            children: [
                              if (widget.categories.isNotEmpty)
                                CardLabelWidget(
                                  label:
                                      '${widget.categories[widget.catIndex].name} ${AppStrings.services}',
                                ),
                            ],
                          ),
                          const SizedBox(height: AppSize.s16),
                          (widget.categories.isEmpty ||
                                  widget.subCategories.isEmpty)
                              ? const Center(
                                  child: CircularProgressIndicator(),
                                )
                              : Column(
                                  children: [
                                    SizedBox(
                                      height: AppSize.s200,
                                      child: ListView.separated(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: widget.subCategories.length,
                                        itemBuilder: (context, index) =>
                                            AspectRatio(
                                          aspectRatio: 0.9,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              AppSize.s8,
                                            ),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: ColorManager.white,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  AppSize.s8,
                                                ),
                                              ),
                                              child: Stack(
                                                children: [
                                                  CachedNetworkImage(
                                                    imageUrl: widget
                                                        .subCategories[index]
                                                        .img,
                                                  ),
                                                  Positioned(
                                                    bottom: 0.0,
                                                    left: 0.0,
                                                    right: 0.0,
                                                    child: ClipRRect(
                                                      child: Container(
                                                        height: AppSize.s40,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.black
                                                              .withOpacity(0.5),
                                                        ),
                                                        child: BackdropFilter(
                                                          filter:
                                                              ImageFilter.blur(
                                                            sigmaX: 2.5,
                                                            sigmaY: 2.5,
                                                          ),
                                                          child: Center(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                horizontal:
                                                                    AppPadding
                                                                        .p4,
                                                              ),
                                                              child: Text(
                                                                widget
                                                                    .subCategories[
                                                                        index]
                                                                    .name,
                                                                style: context
                                                                    .textTheme
                                                                    .bodyLarge!
                                                                    .copyWith(
                                                                  color:
                                                                      ColorManager
                                                                          .white,
                                                                ),
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                              ),
                                                            ),
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
                                        separatorBuilder: (context, index) =>
                                            SizedBox(
                                          width: AppSize.s8.w,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                        ],
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

class CategoriesWidget extends StatelessWidget {
  final List<Category> categories;
  final int selectedIndex;
  const CategoriesWidget({
    super.key,
    required this.categories,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceBetween,
      direction: Axis.horizontal,
      runSpacing: AppSize.s8,
      children: categories
          .map(
            (e) => SizedBox(
              width: AppSize.s80,
              child: CategoryItem(
                category: e,
                onTap: () {},
              ),
            ),
          )
          .toList(),
    );
  }
}
