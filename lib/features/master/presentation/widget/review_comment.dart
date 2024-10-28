import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/Material.dart';
import 'package:gelirx/features/master/presentation/widget/review_star_row.dart';
import 'package:gelirx/features/shared/domain/entities/interaction/interaction_entity.dart';
import 'package:intl/intl.dart';

import '../../../../app/utils/resources/assets_manager.dart';
import '../../../../app/utils/resources/color_manager.dart';
import '../../../../app/utils/resources/styles_manager.dart';
import '../../../../app/utils/resources/values_manager.dart';

class ReviewComment extends StatelessWidget {
  final Interaction interaction;
  const ReviewComment({
    super.key,
    required this.interaction,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              maxRadius: AppSize.s18,
              minRadius: AppSize.s18,
              backgroundImage: CachedNetworkImageProvider(
                interaction.images,
              ), // AssetImage(ImageAssets.handyman),
            ),
            const SizedBox(width: AppSize.s10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Stars(
                      starSize: AppSize.s14,
                      rating: double.parse(interaction.point),
                    ),
                    SizedBox(width: AppSize.s10),
                    Text('${interaction.name} ${interaction.surname}',
                        style: getTextStyle(AppSize.s14, FontWeight.w400,
                            ColorManager.welcomeTextColor)),
                  ],
                ),
                Text(
                    DateFormat('dd MMMM yyyy').format(
                      interaction.date,
                    ),
                    style: getTextStyle(AppSize.s13, FontWeight.w400,
                        ColorManager.textSubtitleColor))
              ],
            ),
          ],
        ),
        const SizedBox(width: AppSize.s10),
        Text(interaction.comment,
            style: getTextStyle(
                AppSize.s14, FontWeight.w300, ColorManager.welcomeTextColor)),
      ],
    );
  }
}
