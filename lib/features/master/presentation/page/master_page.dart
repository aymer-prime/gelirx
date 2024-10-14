import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/app/view/app.dart';

import '../widget/review_comment.dart';
import '../widget/review_star_row.dart';

@RoutePage()
class MasterPage extends StatelessWidget {
  final double rating = 3.5;
  const MasterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: AppSize.s215,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    ImageAssets.tesisat,
                    fit: BoxFit.cover,
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: AppSize.s55,
                        height: AppSize.s55,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(AppSize.s12)),
                          color: ColorManager.lightGrey,
                        ),
                        child: Icon(
                          FontAwesomeIcons.caretLeft,
                          size: AppSize.s18,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: AppSize.s20),
                    child: Container(
                      width: AppSize.s55,
                      height: AppSize.s55,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.circular(AppSize.s12)),
                        color: ColorManager.lightGrey,
                      ),
                      child: Icon(FontAwesomeIcons.heart, size: AppSize.s18),
                    ),
                  ),
                ],
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: AppSize.s16),
                sliver: SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      SizedBox(height: AppSize.s16),
                      Container(
                        decoration: BoxDecoration(
                            color: ColorManager.blueColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(AppSize.s20))),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    maxRadius: AppSize.s25,
                                    minRadius: AppSize.s25,
                                    backgroundImage:
                                        AssetImage(ImageAssets.handyman),
                                  ),
                                  SizedBox(
                                    width: AppSize.s10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Osman Yancigil",
                                          style: getTextStyle(AppSize.s20,
                                              FontWeight.w400, Colors.white)),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            ImageAssets.location,
                                            height: AppSize.s15,
                                          ),
                                          Text("35 km ",
                                              style: getTextStyle(
                                                  AppSize.s14,
                                                  FontWeight.w400,
                                                  ColorManager.white)),
                                          Text("(Approx. 40 min)",
                                              style: getTextStyle(
                                                  AppSize.s14,
                                                  FontWeight.w400,
                                                  ColorManager.lightGreyText)),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: AppSize.s10),
                              Text(
                                "Radiator Cleaning, House Cleaning, House to House Transportation",
                                style: getTextStyle(AppSize.s14,
                                    FontWeight.w400, ColorManager.white),
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(ImageAssets.check,
                                      color: ColorManager.greenColor),
                                  Text(" 12",
                                      style: getTextStyle(
                                          AppSize.s14,
                                          FontWeight.w600,
                                          ColorManager.greenColor)),
                                  Text(" Completed work",
                                      style: getTextStyle(
                                          AppSize.s14,
                                          FontWeight.w400,
                                          ColorManager.greenColor)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: AppSize.s16),
                      Reviews(),
                      SizedBox(
                          height: AppSize
                              .s60), // Assuming Reviews is a scrollable widget
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: AppSize.s0,
            left: AppSize.s0,
            right: AppSize.s0,
            child: Container(
              padding: EdgeInsets.all(AppSize.s16),
              color: Colors.white,
              child: ElevatedButton(
                onPressed: () {
                  context.router.push(BookingDetailsRoute());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorManager.joyColor,
                  padding: EdgeInsets.symmetric(vertical: AppSize.s16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSize.s15),
                  ),
                ),
                child: Text("Call Now",
                    style: getTextStyle(
                        AppSize.s16, FontWeight.w600, Colors.white)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
