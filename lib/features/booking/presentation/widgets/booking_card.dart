import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../../app/utils/resources/assets_manager.dart';
import '../../../../app/utils/resources/color_manager.dart';
import '../../../../app/utils/resources/strings_manager.dart';
import '../../../../app/utils/resources/values_manager.dart';
import '../../../home/presentation/misc/functions.dart';


class BookingCard extends StatelessWidget {
  final String handymanImage;
  final String handymanName;
  final String handymanPhoneNumber;
  final String serviceName;
  final String serviceIcon;

  const BookingCard({
    Key? key,
    required this.handymanImage,
    required this.handymanName,
    required this.handymanPhoneNumber,
    required this.serviceName, required this.serviceIcon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppSize.s16)),
      child: Padding(
        padding: const EdgeInsets.all(AppSize.s16),
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: getCategoryColor(), shape: BoxShape.circle),
                    child: Padding(
                      padding: const EdgeInsets.all(
                        AppPadding.p14,
                      ),
                      child: SvgPicture.asset(serviceIcon,
                          height: AppSize.s28),
                    )),
                const SizedBox(width: AppSize.s16),
                 Text(serviceName, style: Theme.of(context).textTheme.bodyLarge),
              ],
            ),
            SizedBox(height: AppSize.s16),
            Divider(),
            SizedBox(height: AppSize.s16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppStrings.statusTitle, style: Theme.of(context).textTheme.bodyMedium),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: ColorManager.confirmedColor),
                    child: Padding(
                      padding: const EdgeInsets.all(AppPadding.p4),
                      child: Text(AppStrings.confirmedTitle,
                          style: TextStyle(
                              color: ColorManager.confirmedTextColor)),
                    ))
              ],
            ),
            SizedBox(height: AppSize.s16),
            Row(
              children: [
                CircleAvatar(child: CachedNetworkImage(imageUrl: handymanImage),),
                SizedBox(width: AppSize.s10),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text(handymanName), Text(handymanPhoneNumber)],
                ),
                Spacer(),
                ElevatedButton.icon(
                    onPressed: () {
                      launchUrlString("tel://{$handymanPhoneNumber}}");
                    },
                    icon: const Padding(
                      padding: EdgeInsets.all(AppSize.s4),
                      child: Icon(Icons.phone),
                    ),
                    label: const Padding(
                      padding: EdgeInsets.all(AppSize.s4),
                      child: Text(AppStrings.callTitle),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}