import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/domain/entities/category.dart';
import 'package:gelirx/features/home/presentation/bloc/home_bloc.dart';
import 'package:gelirx/features/home/presentation/widgets/category_item.dart';

class CategoriesGridWidget extends StatelessWidget {
  final List<Category> categories;
  const CategoriesGridWidget({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: categories.length,
      itemBuilder: (context, index) {
        var category = categories[index];
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.p4,
          ),
          child: CategoryItem(
            category: category,
            onTap: () {
              context.router.popAndPush(const ServicesRoute());
              context.read<HomeBloc>().add(
                    HomeEvent.getSubCategories(catIndex: index),
                  );
            },
          ),
        );
      },
    );
  }
}
