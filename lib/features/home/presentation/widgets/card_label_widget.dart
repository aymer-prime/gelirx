import 'package:flutter/material.dart';
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
          width: 4,
          height: 24,
          decoration: BoxDecoration(
              color: ColorManager.lightPrimary,
              borderRadius: BorderRadius.circular(
                AppSize.s4,
              )),
        ),
        const SizedBox(width: AppSize.s8),
        Text(
          label,
          style: context.textTheme.headlineLarge,
        )
      ],
    );
  }
}
