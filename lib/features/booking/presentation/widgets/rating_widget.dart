import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gelirx/app/extensions/List.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';

class StarRatingWidget extends StatelessWidget {
  final int currentStarsCount;
  final Function(int) setStarsCount;
  const StarRatingWidget({
    super.key,
    required this.currentStarsCount,
    required this.setStarsCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return GestureDetector(
          onTap: () {
            setStarsCount(index + 1);
          },
          child: index <= currentStarsCount - 1
              ? Icon(
                  FontAwesomeIcons.solidStar,
                  color: ColorManager.ratingColor,
                  size: 40,
                )
              : const Icon(
                  FontAwesomeIcons.solidStar,
                  color: Color(0xffe0e2ea),
                  size: 40,
                ),
        );
      }).separateWith(
        const SizedBox(width: AppSize.s12),
      ),
    );
  }
}
