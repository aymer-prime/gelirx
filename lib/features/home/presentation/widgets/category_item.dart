import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/domain/entities/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  final VoidCallback onTap;
  const CategoryItem({
    super.key,
    required this.category,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        padding: const EdgeInsets.only(
          left: AppPadding.p5,
          right: AppPadding.p5,
          bottom: AppPadding.p10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CachedNetworkImage(
              imageUrl: category.img.icon,
              color: ColorManager.textSubtitleColor,
              height: 24,
            ),
            const SizedBox(height: AppSize.s5),
            Text(
              category.name,
              style: context.textTheme.labelSmall,
              overflow: TextOverflow.fade,
              maxLines: 1,
            )
          ],
        ),
      ),
    );
  }
}
