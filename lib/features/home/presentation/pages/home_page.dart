import 'dart:ffi';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gelirx/app/extentions/context.dart';
import 'package:gelirx/app/injector/injection.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/domain/entities/category.dart';
import 'package:gelirx/features/home/presentation/bloc/home_bloc.dart';
import 'package:gelirx/features/home/presentation/misc/functions.dart';
import 'package:gelirx/features/home/presentation/widgets/card_label_widget.dart';
import 'package:gelirx/features/home/presentation/widgets/categories_grid_widget.dart';
import 'package:gelirx/features/home/presentation/widgets/home_map_widget.dart';
import 'package:gelirx/features/home/presentation/widgets/range_edit_widget.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<HomeBloc>()
        ..add(
          const HomeEvent.getCurrentPosition(),
        )
        ..add(
          const HomeEvent.getCategories(),
        ),
      child: Scaffold(
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(
                AppPadding.p16,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(AppPadding.p16),
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStrings.welcomeSubtitle,
                            style: context.textTheme.titleMedium,
                          ),
                          Text(
                            AppStrings.welcomeTitle,
                            style: context.textTheme.displayMedium,
                          ),
                          const SizedBox(height: AppSize.s16),
                          TextField(
                            decoration: InputDecoration(
                              hintText: AppStrings.searchHint,
                              suffixIcon: Padding(
                                padding: const EdgeInsets.all(AppPadding.p8),
                                child: SizedBox(
                                  height: AppSize.s32,
                                  width: AppSize.s32,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: SvgPicture.asset(
                                      ImageAssets.searchIcon,
                                      height: AppSize.s16,
                                      width: AppSize.s16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: AppSize.s16),
                    Container(
                      padding: const EdgeInsets.all(AppPadding.p16),
                      decoration: BoxDecoration(color: ColorManager.white),
                      child: state.userPosition.fold(
                        () => const Center(
                          child: CircularProgressIndicator(),
                        ),
                        (userPosition) => Column(
                          children: [
                            const CardLabelWidget(label: AppStrings.location),
                            const SizedBox(height: AppSize.s16),
                            SizedBox(
                              height: AppSize.s200,
                              child: HomeMap(userPosition: userPosition),
                            ),
                            Divider(
                              height: AppSize.s16,
                              thickness: AppSize.s1,
                              color: ColorManager.textfieldBorderColor,
                            ),
                            const RangeEditWidget(label: AppStrings.range),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: AppSize.s16),
                    Container(
                      padding: const EdgeInsets.all(AppPadding.p16),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: ColorManager.white,
                      ),
                      child: state.categories.isEmpty
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const CardLabelWidget(
                                        label: AppStrings.topCat),
                                    OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        side: BorderSide(
                                          color:
                                              ColorManager.textfieldBorderColor,
                                          width: 1.5,
                                        ),
                                        shape: StadiumBorder(),
                                      ),
                                      onPressed: () {
                                        showModalBottomSheet(
                                          context: context,
                                          builder: (context) => Container(
                                            padding: const EdgeInsets.all(
                                              AppPadding.p16,
                                            ),
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: ColorManager.white,
                                            ),
                                            child: Column(
                                              children: [
                                                const CardLabelWidget(
                                                  label: AppStrings.allCat,
                                                ),
                                                const SizedBox(
                                                  height: AppSize.s16,
                                                ),
                                                Expanded(
                                                  child: CategoriesGridWidget(
                                                    categories:
                                                        state.categories,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: AppPadding.p16,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              AppStrings.seeAll,
                                              style:
                                                  context.textTheme.labelMedium,
                                            ),
                                            const SizedBox(width: AppSize.s2),
                                            const Icon(
                                              Icons.arrow_forward_ios_rounded,
                                              size: AppSize.s12,
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: AppSize.s16),
                                Row(
                                  children: List.generate(
                                    state.categories.length > 3
                                        ? 3
                                        : state.categories.length,
                                    (index) => Flexible(
                                      fit: FlexFit.tight,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: AppPadding.p8,
                                        ),
                                        child: CategoryItem(
                                          category: state.categories[index],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                                // CategoriesGridWidget(
                                //   categories: state.categories,
                                // ),
                              ],
                            ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: getCategoryColor(),
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.p16),
            child: CachedNetworkImage(
              imageUrl: category.img,
              fit: BoxFit.cover,
              height: AppSize.s24,
            ),
          ),
        ),
        Text(
          category.name,
          style: context.textTheme.labelSmall,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}
