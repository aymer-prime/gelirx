import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';

class DrawerTile extends StatelessWidget {
  final bool isSelected;
  final String label;
  final Widget icon;
  const DrawerTile({
    super.key,
    required this.isSelected,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s48.h,
      padding: const EdgeInsets.all(AppPadding.p12),
      decoration: BoxDecoration(
        color: !isSelected ? ColorManager.primary : ColorManager.white,
        borderRadius: BorderRadius.circular(
          AppSize.s8,
        ),
      ),
      child: Row(
        children: [
          icon,
          SizedBox(width: AppSize.s12.w),
          Text(
            label,
            style: context.textTheme.labelLarge!.copyWith(
              fontSize: FontSizeManager.s15,
              color: isSelected ? ColorManager.primary : ColorManager.white,
            ),
          ),
        ],
      ),
    );
  }
}
