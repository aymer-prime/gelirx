import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/domain/entities/category.dart';
import 'package:gelirx/features/home/presentation/bloc/home_bloc.dart';
import 'package:gelirx/features/shared/widgets/card_label_widget.dart';
import 'package:gelirx/features/home/presentation/widgets/categories_grid_widget.dart';
import 'package:gelirx/features/home/presentation/widgets/category_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopCategoriesWidgets extends StatelessWidget {
  final List<Category> categories;
  const TopCategoriesWidgets({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CardLabelWidget(label: AppStrings.topCat),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  color: ColorManager.textfieldBorderColor,
                  width: 1.5,
                ),
                shape: const StadiumBorder(),
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
                            categories: categories,
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      AppStrings.seeAll,
                      style: context.textTheme.labelMedium,
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
            categories.length > 3 ? 3 : categories.length,
            (index) => Flexible(
              fit: FlexFit.tight,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p8,
                ),
                child: CategoryItem(
                  category: categories[index],
                  onTap: () {
                    context.read<HomeBloc>().add(
                          HomeEvent.getSubCategories(catIndex: index),
                        );
                    context.router.push(const ServicesRoute());
                  },
                ),
              ),
            ),
          ),
        )
        // CategoriesGridWidget(
        //   categories: state.categories,
        // ),
      ],
    );
  }
}
