import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gelirx/app/extensions/List.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';

class StepIndicator extends StatelessWidget {
  final int totalSteps; // Total number of steps
  final int currentStep; // Current active step

  const StepIndicator({
    Key? key,
    required this.totalSteps,
    required this.currentStep,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(totalSteps, (index) {
        return Flexible(
          child: Container(
            //width: 75, // Width of the step indicator
            height: 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.s20.r),
              color: index < currentStep
                  ? ColorManager.primary // Color for completed steps
                  : index == currentStep
                      ? ColorManager.primary // Color for the current step
                      : Colors.grey, // Color for inactive steps
            ),
          ),
        );
      }).separateWith(
        SizedBox(width: AppSize.s8.w),
      ),
    );
  }
}
