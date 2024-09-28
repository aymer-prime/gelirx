import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/domain/entities/category.dart';
import 'package:gelirx/features/home/presentation/widgets/top_categories_widget.dart';
import 'package:gelirx/features/shared/domain/entities/shared_entities.dart';
import 'package:gelirx/features/home/presentation/widgets/category_item.dart';

class HomeDraggableSheet extends StatefulWidget {
  final List<Category> categories;
  final List<UserSkills> services;
  final int catIndex;
  final int subCatIndex;
  const HomeDraggableSheet({
    super.key,
    required this.categories,
    required this.services,
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
                            color: ColorManager.textSubtitleColor,
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
                          SizedBox(height: AppSize.s16.h),
                          widget.categories.isEmpty
                              ? const Center(
                                  child: CircularProgressIndicator(),
                                )
                              : TopCategoriesWidgets(
                                  categories: widget.categories,
                                ),
                          SizedBox(height: AppSize.s16.h),
                          (widget.categories.isEmpty || widget.services.isEmpty)
                              ? const Center(
                                  child: CircularProgressIndicator(),
                                )
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ...widget.services.map(
                                      (service) => service.subSkill.isEmpty
                                          ? const SizedBox()
                                          : ServiceWidget(
                                              service: service,
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

class ServiceWidget extends StatelessWidget {
  final UserSkills service;
  const ServiceWidget({
    super.key,
    required this.service,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          service.skill.name,
          style: context.textTheme.displaySmall,
        ),
        SizedBox(height: AppSize.s8.h),
        SizedBox(
          height: AppSize.s200,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: service.subSkill.length,
            itemBuilder: (context, index) => AspectRatio(
              aspectRatio: 0.85,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  AppSize.s8,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorManager.white,
                    borderRadius: BorderRadius.circular(
                      AppSize.s8,
                    ),
                  ),
                  child: ServiceCard(
                    category: service.subSkill[index],
                  ),
                ),
              ),
            ),
            separatorBuilder: (context, index) => SizedBox(
              width: AppSize.s8.w,
            ),
          ),
        ),
        SizedBox(height: AppSize.s20.h)
      ],
    );
  }
}

class ServiceCard extends StatelessWidget {
  final Category category;
  const ServiceCard({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context) => SizedBox(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: ColorManager.background,
              ),
              child: Stack(
                children: [
                  Container(
                    height: context.screenSize.height * 0.3,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ColorManager.background,
                    ),
                    child: CachedNetworkImage(
                      imageUrl: category.img.photo,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppPadding.p16, vertical: AppPadding.p8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: context.screenSize.height * 0.25,
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: ColorManager.white,
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(
                                    Icons.arrow_back_ios_new_rounded,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(
                            AppPadding.p16,
                          ),
                          decoration: BoxDecoration(
                            color: ColorManager.white,
                            borderRadius: BorderRadius.circular(AppSize.s12),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
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
                                      )),
                                ),
                              ),
                              const SizedBox(height: AppSize.s8),
                              Center(
                                child: Text(
                                  category.name,
                                  style: context.textTheme.displaySmall,
                                ),
                              ),
                              const SizedBox(height: AppSize.s24),
                              Text(
                                'Service Provider',
                                style: context.textTheme.headlineMedium,
                              ),
                              const SizedBox(height: AppSize.s16),
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
                                  Text(
                                    'Master Name',
                                    style: context.textTheme.titleLarge,
                                  ),
                                  const SizedBox(width: AppSize.s8),
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
                                ],
                              ),
                              const SizedBox(height: AppSize.s24),
                              const Text('Book Service'),
                              const SizedBox(height: AppSize.s16),
                              const TextField(
                                maxLength: 1000,
                                maxLengthEnforcement:
                                    MaxLengthEnforcement.enforced,
                                maxLines: null,
                                minLines: 5,
                                decoration: InputDecoration(
                                  hintText: 'Problem Description . . .',
                                ),
                              ),
                              const SizedBox(height: AppSize.s16),
                              Row(
                                children: [
                                  Flexible(
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: const SizedBox(
                                        child: Center(
                                          child: Text('Book service'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: AppSize.s8),
                                  Flexible(
                                    child: OutlinedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const SizedBox(
                                        child: Center(
                                          child: Text('Cancel'),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      child: Stack(
        children: [
          Positioned.fill(
            child: CachedNetworkImage(
              imageUrl: category.img.photo,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: ClipRRect(
              child: Container(
                height: AppSize.s40,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 2.5,
                    sigmaY: 2.5,
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppPadding.p4,
                      ),
                      child: Text(
                        category.name,
                        style: context.textTheme.bodyLarge!.copyWith(
                          color: ColorManager.white,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
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
