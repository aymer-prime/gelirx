import 'package:flutter/material.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';

class StatusContainer extends StatelessWidget {
  const StatusContainer({
    super.key,
    required this.status,
  });

  final String status;

  @override
  Widget build(BuildContext context) {
    switch (status) {
      case '1':
        return Container(
          padding: const EdgeInsets.all(AppSize.s8),
          decoration: BoxDecoration(
              color: Color(0xffffc000),
              borderRadius: BorderRadius.circular(AppSize.s8)),
          child: Text(
            'On Hold',
            style:
                getTextStyle(AppSize.s14, FontWeight.w500, ColorManager.white),
          ),
        );
      case '2':
        return Container(
          padding: const EdgeInsets.all(AppSize.s8),
          decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(AppSize.s8)),
          child: Text(
            'Accepted',
            style:
                getTextStyle(AppSize.s14, FontWeight.w500, ColorManager.white),
          ),
        );
      case '3':
        return Container(
          padding: const EdgeInsets.all(AppSize.s8),
          decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(AppSize.s8)),
          child: Text(
            'On Way',
            style:
                getTextStyle(AppSize.s14, FontWeight.w500, ColorManager.white),
          ),
        );
      case '4':
        return Container(
          padding: const EdgeInsets.all(AppSize.s8),
          decoration: BoxDecoration(
              color: Color(0xff00a575),
              borderRadius: BorderRadius.circular(AppSize.s8)),
          child: Text(
            'Completed',
            style:
                getTextStyle(AppSize.s14, FontWeight.w500, ColorManager.white),
          ),
        );
      default:
        return Container(
          padding: const EdgeInsets.all(AppSize.s8),
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(AppSize.s8)),
          child: Text(
            'Declined',
            style:
                getTextStyle(AppSize.s14, FontWeight.w500, ColorManager.white),
          ),
        );
    }
  }
}
