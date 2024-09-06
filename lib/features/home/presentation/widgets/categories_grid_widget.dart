import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gelirx/app/extentions/context.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/domain/entities/category.dart';
import 'package:gelirx/features/home/presentation/misc/functions.dart';

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
        crossAxisCount: 3,
      ),
      shrinkWrap: true,
      itemCount: categories.length,
      itemBuilder: (context, index) {
        var category = categories[index];
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.p4,
          ),
          child: SizedBox(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: AppSize.s60,
                  height: AppSize.s60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: getCategoryColor(),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(AppPadding.p16),
                    child: CachedNetworkImage(
                      imageUrl: category.img,
                    ),
                  ),
                ),
                Text(
                  category.name,
                  style: context.textTheme.labelSmall,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
