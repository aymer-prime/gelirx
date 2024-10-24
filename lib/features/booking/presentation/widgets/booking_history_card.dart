import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gelirx/app/extensions/List.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/booking/presentation/widgets/status_container.dart';

class BookingHistoryCard extends StatelessWidget {
  final String name;
  final String serviceName;
  final String date;
  final String status;
  final double rating;
  final int totalInteractions;

  const BookingHistoryCard(
      {super.key,
      required this.name,
      required this.serviceName,
      required this.date,
      required this.status,
      required this.rating,
      required this.totalInteractions});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.s24),
      child: AspectRatio(
        aspectRatio: 1.2,
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    blurRadius: AppSize.s10,
                    spreadRadius: 1,
                    color: Color.fromARGB(51, 0, 0, 0))
              ],
              borderRadius:
                  BorderRadius.circular(15) // Adjust the radius as needed
              ),
          child: Stack(
            children: [
              Positioned.fill(
                  child: Image.asset(ImageAssets.tesisat, fit: BoxFit.cover)),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: AppSize.s10, horizontal: AppSize.s15),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              backgroundImage: AssetImage(ImageAssets.handyman),
                              maxRadius: AppSize.s25,
                              minRadius: AppSize.s25,
                            ),
                            SizedBox(width: AppSize.s12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(name,
                                    style: getTextStyle(AppSize.s16,
                                            FontWeight.w400, Colors.black)
                                        .copyWith(
                                            letterSpacing: -0.1, height: 1.1)),
                                Text(serviceName,
                                    style: getTextStyle(AppSize.s13,
                                            FontWeight.w300, Colors.black)
                                        .copyWith(
                                            letterSpacing: -0.1, height: 1.1)),
                                Text(date,
                                    style: getTextStyle(
                                            AppSize.s13,
                                            FontWeight.w300,
                                            ColorManager.tabBarColor)
                                        .copyWith(
                                            letterSpacing: -0.1, height: 1.1)),
                                StatusContainer(status: status)
                              ].separateWith(
                                const SizedBox(height: AppSize.s5),
                              ),
                            ),
                            SizedBox(width: AppSize.s10),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  FontAwesomeIcons.solidStar,
                                  color: ColorManager.ratingColor,
                                  size: AppSize.s15,
                                ),
                                SizedBox(width: AppSize.s5),
                                Text(
                                  rating.toString(),
                                  style: getTextStyle(
                                      AppSize.s14,
                                      FontWeight.w400,
                                      ColorManager.textSubtitleColor),
                                ),
                                SizedBox(width: AppSize.s5),
                                Text(
                                  "(24)",
                                  style: getTextStyle(
                                      AppSize.s14,
                                      FontWeight.w300,
                                      ColorManager.textSubtitleColor),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: AppSize.s10,
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
