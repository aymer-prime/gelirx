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
  final String selectedCategory;
  const AllCategoriesWidgets({
    super.key,
    required this.categories,
    required this.selectedCategory,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(right: AppPadding.p20),
        child: Stack(
          children: [
            AspectRatio(
              aspectRatio: 0.6,
              child: Stack(
                children: [
                  CategoryItem(
                    category: categories[index],
                    onTap: () {
                      context.read<HomeBloc>().add(
                            HomeEvent.setFilters(categories[index]),
                          );
                    },
                  ),
                ],
              ),
            ),
            if(selectedCategory==categories[index].id)
            const Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Divider(
                height: 0,
                color: Colors.black,
                thickness: AppSize.s3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
