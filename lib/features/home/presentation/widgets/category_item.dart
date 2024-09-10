import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gelirx/app/extentions/context.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/domain/entities/category.dart';
import 'package:gelirx/features/home/presentation/misc/functions.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  final bool isSelected;
  final VoidCallback onTap;
  const CategoryItem({
    super.key,
    required this.category,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorManager.lightPrimary.withOpacity(0.6),
              border: isSelected
                  ? Border.all(
                      color: ColorManager.primary,
                      width: AppSize.s2,
                    )
                  : null,
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
      ),
    );
  }
}
