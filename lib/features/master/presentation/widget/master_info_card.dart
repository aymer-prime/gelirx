import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gelirx/app/extensions/List.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/auth/domain/entities/user_entity.dart';

class MasterInfoCard extends StatelessWidget {
  final UserInfo info;
  const MasterInfoCard({
    super.key,
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.blueColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSize.s24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorManager.lightGrey,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: CachedNetworkImage(
                      imageUrl: info.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: AppSize.s10),
                Flexible(
                  flex: 3,
                  fit: FlexFit.tight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${info.name} ${info.surname}',
                        style: getTextStyle(
                            AppSize.s20, FontWeight.w400, Colors.white),
                      ),
                      Wrap(
                        children: info.services
                            .map(
                              (e) => Text(
                                e.name,
                                style: getTextStyle(
                                  AppSize.s14,
                                  FontWeight.w400,
                                  ColorManager.lightGreyText,
                                ),
                              ),
                            )
                            .toList()
                            .separateWith(
                              Text(
                                ', ',
                                style: getTextStyle(
                                  AppSize.s14,
                                  FontWeight.w400,
                                  ColorManager.lightGreyText,
                                ),
                              ),
                            ),
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
                        AppSize.s14, FontWeight.w600, ColorManager.greenColor)),
                Text(" Completed work",
                    style: getTextStyle(
                        AppSize.s14, FontWeight.w400, ColorManager.greenColor)),
              ],
            ),
            SizedBox(height: AppSize.s5),
            Row(
              children: [
                SvgPicture.asset(
                  ImageAssets.location,
                  height: AppSize.s15,
                ),
                Text("35 km ",
                    style: getTextStyle(
                        AppSize.s14, FontWeight.w400, ColorManager.white)),
                Text("(Approx. 40 min)",
                    style: getTextStyle(AppSize.s14, FontWeight.w400,
                        ColorManager.lightGreyText)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
