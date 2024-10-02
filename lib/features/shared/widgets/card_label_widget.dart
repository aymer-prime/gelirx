import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';

class CardLabelWidget extends StatelessWidget {
  final String label;
  const CardLabelWidget({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: AppSize.s4.w,
          height: AppSize.s20.h,
          decoration: BoxDecoration(
              color: ColorManager.primary,
              borderRadius: BorderRadius.circular(
                AppSize.s4,
              )),
        ),
        SizedBox(width: AppSize.s10.w),
        Text(
          label,
          style: context.textTheme.displaySmall,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}
