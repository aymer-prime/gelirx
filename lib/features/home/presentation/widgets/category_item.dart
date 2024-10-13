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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(AppPadding.p12),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorManager.joyColor,
              // border: Border.all(
              //   color: ColorManager.lightGrey, //Color(0xffe0e2ea),
              // ),
            ),
            child: CachedNetworkImage(
              imageUrl: category.img.icon,
              color: ColorManager.white,
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
