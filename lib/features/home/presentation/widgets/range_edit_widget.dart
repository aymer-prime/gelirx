import 'package:flutter/material.dart';
import 'package:gelirx/app/extentions/context.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';

class RangeEditWidget extends StatelessWidget {
  final String label;
  const RangeEditWidget({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s36,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: context.textTheme.bodyLarge,
          ),
          Row(
            children: [
              SizedBox(
                width: AppSize.s36,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.remove_rounded,
                    color: ColorManager.outlineButtonBorderColor,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppPadding.p16,
                ),
                child: Text('5'),
              ),
              SizedBox(
                width: AppSize.s36,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.add_rounded,
                    color: ColorManager.white,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
