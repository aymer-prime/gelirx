import 'package:flutter/Material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gelirx/app/extensions/List.dart';
import 'package:gelirx/features/master/presentation/widget/review_comment.dart';
import 'package:gelirx/features/shared/domain/entities/interaction/interaction_entity.dart';

import '../../../../app/utils/resources/color_manager.dart';
import '../../../../app/utils/resources/styles_manager.dart';
import '../../../../app/utils/resources/values_manager.dart';

class Reviews extends StatelessWidget {
  final List<Interaction> interactions;
  const Reviews({
    super.key,
    required this.interactions,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Reviews",
          style: getTextStyle(AppSize.s14, FontWeight.w300, ColorManager.black),
        ),
        Stack(
          children: [
            Divider(thickness: 3, color: Color(0xfff0f2f8)),
            SizedBox(
                width: AppSize.s72,
                child: Divider(
                    thickness: 2, color: ColorManager.welcomeTextColor)),
          ],
        ),
        Row(
          children: [
            Text(
              calculateAveragePoints(interactions).toString(),
              style: getTextStyle(
                AppSize.s20,
                FontWeight.w500,
                ColorManager.welcomeTextColor,
              ),
            ),
            SizedBox(width: AppSize.s4),
            Stars(
              starSize: AppSize.s18,
              rating: calculateAveragePoints(interactions),
            ),
            SizedBox(width: AppSize.s6),
            Text("(${interactions.length})",
                style: getTextStyle(
                    AppSize.s16, FontWeight.w300, ColorManager.tabBarColor)),
          ],
        ),
        InteractionRatingRows(
          reviews: countPoints(interactions),
          totalInteractions: interactions.length,
        ),
        SizedBox(height: AppSize.s20),
        ...List.generate(
          interactions.length,
          (index) => ReviewComment(
            interaction: interactions[index],
          ),
        ).separateWith(
          SizedBox(height: AppSize.s20),
        ),
      ],
    );
  }

  Map<String, int> countPoints(List<Interaction> interactions) {
    Map<String, int> pointCounts = {'1': 0, '2': 0, '3': 0, '4': 0, '5': 0};

    for (var obj in interactions) {
      if (pointCounts.containsKey(obj.point)) {
        pointCounts[obj.point] = pointCounts[obj.point]! + 1;
      }
    }
    return pointCounts;
  }

  double calculateAveragePoints(List<Interaction> interactions) {
    if (interactions.isEmpty) return 0.0;

    int totalPoints =
        interactions.fold(0, (sum, obj) => sum + int.parse(obj.point));
    return totalPoints / interactions.length;
  }
}

class InteractionRatingRows extends StatelessWidget {
  final Map<String, int> reviews;
  final int totalInteractions;
  const InteractionRatingRows({
    super.key,
    required this.reviews,
    required this.totalInteractions,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      RatingRow(
        number: 5,
        starColor: ColorManager.fiveRatingColor,
        percent: (reviews['5']! * 100) / 10,
        progressColor: ColorManager.fiveRatingColor,
        totalReviews: reviews['5']!,
      ),
      RatingRow(
        number: 4,
        starColor: ColorManager.fourRatingColor,
        percent: (reviews['4']! * 100) / totalInteractions,
        progressColor: ColorManager.fourRatingColor,
        totalReviews: reviews['4']!,
      ),
      RatingRow(
        number: 3,
        starColor: ColorManager.threeRatingColor,
        percent: (reviews['3']! * 100) / totalInteractions,
        progressColor: ColorManager.threeRatingColor,
        totalReviews: reviews['3']!,
      ),
      RatingRow(
        number: 2,
        starColor: ColorManager.twoRatingColor,
        percent: (reviews['2']! * 100) / totalInteractions,
        progressColor: ColorManager.twoRatingColor,
        totalReviews: reviews['2']!,
      ),
      RatingRow(
        number: 1,
        starColor: ColorManager.oneRatingColor,
        percent: (reviews['1']! * 100) / totalInteractions,
        progressColor: ColorManager.oneRatingColor,
        totalReviews: reviews['1']!,
      ),
    ]);
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
          percent: percent / 100,
          progressColor: progressColor,
        ),
        SizedBox(width: AppSize.s6),
        Text(
          "$percent%",
          style: getTextStyle(
              AppSize.s13, FontWeight.w500, ColorManager.welcomeTextColor),
        ),
        SizedBox(width: AppSize.s6),
        if (totalReviews > 0)
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
            color: Color(0xfff0f2f8),
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
  final double rating;
  final double starSize;
  const Stars({
    super.key,
    required this.starSize,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(5, (index) {
            return Icon(
              FontAwesomeIcons.solidStar,
              color: Color(0xffe0e2ea),
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
                widthFactor:
                    rating - index > 0 ? (rating - index).clamp(0.0, 1.0) : 0.0,
                child: Icon(
                  FontAwesomeIcons.solidStar,
                  color: ColorManager.ratingColor,
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
