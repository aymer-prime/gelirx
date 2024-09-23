import 'package:flutter/material.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/shared/widgets/card_label_widget.dart';

class UserTypeWidget extends StatelessWidget {
  final String label;
  final String img;
  final bool isSelected;
  final VoidCallback onSelect;
  const UserTypeWidget(
      {super.key,
      required this.label,
      required this.img,
      required this.isSelected,
      required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GestureDetector(
        onTap: () {
          onSelect();
        },
        child: Container(
          padding: const EdgeInsets.all(AppPadding.p16),
          decoration: BoxDecoration(
            color: ColorManager.textfieldFillColor,
            borderRadius: BorderRadius.circular(AppSize.s12),
            border: isSelected
                ? Border.all(
                    color: ColorManager.primary,
                    width: AppSize.s2,
                  )
                : Border.all(
                    color: ColorManager.textfieldBorderColor,
                    width: AppSize.s1,
                  ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardLabelWidget(label: label),
              Expanded(child: Image.asset(img)),
            ],
          ),
        ),
      ),
    );
  }
}
