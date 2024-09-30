import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
    required this.serviceName,
    required this.serviceIcon,
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
              children: [
                CircleAvatar(
                  radius: AppSize.s25,
                  backgroundColor: ColorManager.lightPrimary,
                  child: Padding(
                    padding: const EdgeInsets.all(AppPadding.p12),
                    child: SvgPicture.asset(ImageAssets.acIcon),
                  ),
                ),
                const SizedBox(width: AppSize.s16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      serviceName,
                      style: context.textTheme.headlineSmall,
                    ),
                    Text(
                      'Date: ${DateFormat('dd/MM/yyyy, hh:mm').format(DateTime.now())}',
                      style: context.textTheme.labelSmall,
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.p16,
              ),
              child: Divider(
                color: ColorManager.textfieldBorderColor,
                height: AppSize.s24,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStrings.statusTitle,
                  style: context.textTheme.bodyMedium,
                ),
                Container(
                  padding: const EdgeInsets.all(AppPadding.p8),
                  decoration: BoxDecoration(
                      color: ColorManager.confirmedColor,
                      borderRadius: BorderRadius.circular(
                        AppSize.s8,
                      )),
                  child: Text(
                    AppStrings.confirmedTitle,
                    style: context.textTheme.labelLarge!.copyWith(
                      color: ColorManager.confirmedTextColor,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.p16,
              ),
              child: Divider(
                color: ColorManager.textfieldBorderColor,
                height: AppSize.s24,
              ),
            ),
            Row(
              children: [
                CircleAvatar(
                  child: CachedNetworkImage(imageUrl: handymanImage),
                ),
                const SizedBox(width: AppSize.s10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text(handymanName), Text(handymanPhoneNumber)],
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    launchUrlString("tel://{$handymanPhoneNumber}}");
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(AppPadding.p12),
                    child: Row(
                      children: [
                        Icon(Icons.phone),
                        SizedBox(width: AppSize.s8),
                        Text(AppStrings.callTitle),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
