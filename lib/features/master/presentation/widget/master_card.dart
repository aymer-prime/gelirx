import 'package:flutter/Material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../app/utils/resources/assets_manager.dart';
import '../../../../app/utils/resources/color_manager.dart';
import '../../../../app/utils/resources/styles_manager.dart';
import '../../../../app/utils/resources/values_manager.dart';

class MasterCard extends StatelessWidget {
  const MasterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorManager.blueColor,
          borderRadius:
          const BorderRadius.all(Radius.circular(AppSize.s20))),
      child: Padding(
        padding: const EdgeInsets.all(AppSize.s24),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: AppSize.s60,
                  height: AppSize.s60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(ImageAssets.handyman),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: AppSize.s10,
                ),
                 Expanded(
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text("Osman Yancigil",
                          style: getTextStyle(AppSize.s20,
                              FontWeight.w400, Colors.white)),
                      Text(
                        "Radiator Cleaning, House Cleaning, House to House Transportation",
                        style: getTextStyle(AppSize.s14,
                            FontWeight.w400, ColorManager.lightGreyText),
                      ),
                    ],
                  ),
                )
              ],
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
            const SizedBox(height: AppSize.s5),
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
        ),
      ),
    );
  }
}
