import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gelirx/app/extensions/List.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/booking/presentation/widgets/status_container.dart';

class BookingHistoryCard extends StatelessWidget {
  final String name;
  final String serviceName;
  final String date;
  final String status;
  final String image;
  final double rating;
  final int totalInteractions;
  final VoidCallback onTap;

  const BookingHistoryCard({
    super.key,
    required this.name,
    required this.serviceName,
    required this.date,
    required this.image,
    required this.status,
    required this.rating,
    required this.totalInteractions,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadius.circular(15), // Adjust the radius as needed
            boxShadow: const [
              BoxShadow(
                  blurRadius: AppSize.s10,
                  spreadRadius: 1,
                  color: Color.fromARGB(51, 0, 0, 0))
            ],
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: AppSize.s10, horizontal: AppSize.s15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 2,
                      child: SizedBox(
                        height: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            AppSize.s16,
                          ),
                          child: CachedNetworkImage(
                            imageUrl: image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: AppSize.s12),
                    Flexible(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(name,
                              style: getTextStyle(AppSize.s16, FontWeight.w400,
                                      Colors.black)
                                  .copyWith(letterSpacing: -0.1, height: 1.1)),
                          Text(serviceName,
                              style: getTextStyle(AppSize.s13, FontWeight.w300,
                                      Colors.black)
                                  .copyWith(letterSpacing: -0.1, height: 1.1)),
                          Text(date,
                              style: getTextStyle(AppSize.s13, FontWeight.w300,
                                      ColorManager.tabBarColor)
                                  .copyWith(letterSpacing: -0.1, height: 1.1)),
                          StatusContainer(status: status)
                        ].separateWith(
                          const SizedBox(height: AppSize.s5),
                        ),
                      ),
                    ),
                    const SizedBox(width: AppSize.s10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.solidStar,
                          color: ColorManager.ratingColor,
                          size: AppSize.s15,
                        ),
                        const SizedBox(width: AppSize.s5),
                        Text(
                          rating.toString(),
                          style: getTextStyle(AppSize.s14, FontWeight.w400,
                              ColorManager.textSubtitleColor),
                        ),
                        const SizedBox(width: AppSize.s5),
                        Text(
                          "(24)",
                          style: getTextStyle(AppSize.s14, FontWeight.w300,
                              ColorManager.textSubtitleColor),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: AppSize.s10,
                right: AppSize.s10,
                child: Container(
                  width: AppSize.s40,
                  height: AppSize.s40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorManager.lightGrey,
                  ),
                  child: const Icon(FontAwesomeIcons.heart, size: AppSize.s18),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
