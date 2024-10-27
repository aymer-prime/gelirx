import 'package:flutter/Material.dart';
import 'package:gelirx/features/master/presentation/widget/review_star_row.dart';

import '../../../../app/utils/resources/assets_manager.dart';
import '../../../../app/utils/resources/color_manager.dart';
import '../../../../app/utils/resources/styles_manager.dart';
import '../../../../app/utils/resources/values_manager.dart';

class ReviewComment extends StatelessWidget {
  const ReviewComment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              maxRadius: AppSize.s18,
              minRadius: AppSize.s18,
              backgroundImage: AssetImage(ImageAssets.handyman),
            ),
            SizedBox(
              width: AppSize.s10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stars(starSize: AppSize.s14),
                Text("10 Ekim 2024",
                    style: getTextStyle(AppSize.s13, FontWeight.w400,
                        ColorManager.textSubtitleColor))
              ],
            ),
            SizedBox(
              width: AppSize.s10,
            ),
            Text("Pınar A.",
                style: getTextStyle(AppSize.s14, FontWeight.w400,
                    ColorManager.welcomeTextColor)),
          ],
        ),
        SizedBox(
          width: AppSize.s10,
        ),
        Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc massa nibh, rutrum ut ullamcorper ullamcorper, tempor sit amet nibh. Praesent vitae ligula sagittis, sollicitudin nunc eu, sodales erat.",
            style: getTextStyle(
                AppSize.s14, FontWeight.w300, ColorManager.welcomeTextColor)),
      ],
    );
  }
}
