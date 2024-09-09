import 'package:flutter/material.dart';
import 'package:gelirx/app/extentions/context.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/domain/entities/category.dart';

class FilterButton extends StatelessWidget {
  final VoidCallback onSelect;
  const FilterButton({
    super.key,
    required this.filter,
    required this.onSelect,
  });

  final Category filter;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSelect();
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: AppMargin.m8),
        width: double.infinity,
        height: AppSize.s40,
        decoration: BoxDecoration(
          color: ColorManager.white,
          border: Border.all(
            color: ColorManager.outlineButtonBorderColor,
            width: AppSize.s1,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            filter.name,
            style: context.textTheme.titleMedium,
          ),
        ),
      ),
    );
  }
}