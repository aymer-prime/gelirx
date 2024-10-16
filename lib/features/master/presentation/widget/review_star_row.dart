import 'package:flutter/Material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gelirx/features/master/presentation/widget/review_comment.dart';

import '../../../../app/utils/resources/color_manager.dart';
import '../../../../app/utils/resources/styles_manager.dart';
import '../../../../app/utils/resources/values_manager.dart';

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Reviews", style: getTextStyle(AppSize.s14, FontWeight.w300, ColorManager.black),),
        Stack(
          children: [
            Divider(thickness: 1,),
            SizedBox(width: AppSize.s72, child: Divider(thickness: 1,color: ColorManager.black)),
          ],
        ),
        Row(
          children: [
            Text("4.7",
                style: getTextStyle(AppSize.s20, FontWeight.w500,
                    ColorManager.welcomeTextColor)),
            SizedBox(width: AppSize.s4),
            Stars(starSize: AppSize.s18),
            SizedBox(width: AppSize.s6),
            Text("(17)",
                style: getTextStyle(
                    AppSize.s16, FontWeight.w300, ColorManager.tabBarColor)),
          ],
        ),
        RatingRow(
            number: 5,
            starColor: ColorManager.fiveRatingColor,
            percent: 0.88,
            progressColor: ColorManager.fiveRatingColor,
            totalReviews: 13),
        RatingRow(
            number: 4,
            starColor: ColorManager.fourRatingColor,
            percent: 0.06,
            progressColor: ColorManager.fourRatingColor,
            totalReviews: 2),
        RatingRow(
            number: 3,
            starColor: ColorManager.threeRatingColor,
            percent: 0.0,
            progressColor: ColorManager.threeRatingColor,
            totalReviews: 0),
        RatingRow(
            number: 2,
            starColor: ColorManager.twoRatingColor,
            percent: 0.0,
            progressColor: ColorManager.twoRatingColor,
            totalReviews: 0),
        RatingRow(
            number: 1,
            starColor: ColorManager.oneRatingColor,
            percent: 0.06,
            progressColor: ColorManager.oneRatingColor,
            totalReviews: 2),
        SizedBox(height: AppSize.s20),
        ReviewComment(),
        SizedBox(height: AppSize.s20),
        ReviewComment(),
        SizedBox(height: AppSize.s20),
        ReviewComment(),
        SizedBox(height: AppSize.s20),
      ],
    );
  }
}

class RatingRow extends StatelessWidget {
  final int number;
  final Color starColor;
  final double percent;
  final Color progressColor;
  final int totalReviews;

  RatingRow({
    required this.number,
    required this.starColor,
    required this.percent,
    required this.progressColor,
    required this.totalReviews,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$number",
          style: getTextStyle(
              AppSize.s13, FontWeight.w500, ColorManager.welcomeTextColor),
        ),
        SizedBox(width: AppSize.s6),
        Icon(
          FontAwesomeIcons.solidStar,
          color: starColor,
          size: AppSize.s15,
        ),
        SizedBox(width: AppSize.s6),
        CustomLinearProgressIndicator(
          width: MediaQuery.of(context).size.width - AppSize.s150,
          percent: percent,
          progressColor: progressColor,
        ),
        SizedBox(width: AppSize.s6),
        Text(
          "${(percent * 100).toStringAsFixed(0)}%",
          style: getTextStyle(
              AppSize.s13, FontWeight.w500, ColorManager.welcomeTextColor),
        ),
        SizedBox(width: AppSize.s6),
        if (totalReviews >0)
          Text(
            "($totalReviews)",
            style: getTextStyle(
                AppSize.s16, FontWeight.w300, ColorManager.tabBarColor),
          ),
      ],
    );
  }
}

class CustomLinearProgressIndicator extends StatelessWidget {
  final double width;
  final double percent;
  final Color progressColor;

  CustomLinearProgressIndicator({
    required this.width,
    required this.percent,
    required this.progressColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width,
          height: AppSize.s6,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Container(
          width: width * percent,
          height: AppSize.s6,
          decoration: BoxDecoration(
            color: progressColor,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }
}


class Stars extends StatelessWidget {
  final double rating = 3.5;
  final double starSize;
  const Stars({super.key, required this.starSize});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(5, (index) {
            return Icon(
              FontAwesomeIcons.solidStar,
              color: ColorManager.lightGrey,
              size: starSize,
            );
          }),
        ),
         Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(5, (index) {
            return ClipRect(
              child: Align(
                alignment: Alignment.topLeft,
                widthFactor: rating - index > 0
                    ? (rating - index).clamp(0.0, 1.0)
                    : 0.0,
                child: Icon(
                  FontAwesomeIcons.solidStar,
                  color: ColorManager
                      .ratingColor,
                  size: starSize,
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
