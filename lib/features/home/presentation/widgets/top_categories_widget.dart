import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/domain/entities/category.dart';
import 'package:gelirx/features/home/presentation/bloc/home_bloc.dart';
import 'package:gelirx/features/home/presentation/widgets/category_item.dart';

class AllCategoriesWidgets extends StatelessWidget {
  final List<Category> categories;
  const AllCategoriesWidgets({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: AppSize.s60,
          decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.circular(
              AppSize.s20.r,
            ),
          ),
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(right: AppPadding.p20),
              child: AspectRatio(
                aspectRatio: 0.75,
                child: CategoryItem(
                  category: categories[index],
                  onTap: () {
                    context.read<HomeBloc>().add(
                          HomeEvent.setFilters(categories[index]),
                        );
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
