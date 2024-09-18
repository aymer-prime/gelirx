import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/shared/widgets/card_label_widget.dart';
import 'package:intl/intl.dart';

class MasterDashboardPage extends StatelessWidget {
  const MasterDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: AppSize.s80,
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(AppPadding.p8),
              margin: const EdgeInsets.symmetric(horizontal: AppMargin.m4),
              decoration: BoxDecoration(
                color: ColorManager.confirmedColor,
                borderRadius: BorderRadius.circular(
                  AppSize.s12,
                ),
              ),
              child: Center(
                child: Text('not Busy',
                    style: context.textTheme.labelSmall!.copyWith(
                      color: ColorManager.confirmedTextColor,
                    )),
              ),
            ),
          ],
        ),
        title: const Text('Master Name'),
        centerTitle: false,
        actions: [
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Bronze',
                    style: context.textTheme.labelLarge!.copyWith(
                      color: ColorManager.bronzeTire,
                      fontSize: FontSizeManager.s10,
                    ),
                  ),
                  Text(
                    '20 Tokens',
                    style: context.textTheme.labelSmall!.copyWith(
                      fontSize: FontSizeManager.s8,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: AppSize.s4),
              SvgPicture.asset(
                ImageAssets.tierIcon,
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(ColorManager.bronzeTire, BlendMode.srcIn),
              ),
              const SizedBox(width: AppSize.s4),
            ],
          )
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(AppPadding.p16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CardLabelWidget(label: 'Current Bookings'),
              SizedBox(height: AppSize.s16),
              MasterBookingWidget(),
              SizedBox(height: AppSize.s16),
              MasterBookingWidget(),
              SizedBox(height: AppSize.s16),
              MasterBookingWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class MasterBookingWidget extends StatelessWidget {
  const MasterBookingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.circular(AppSize.s8)),
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: ColorManager.lightPrimary,
                  child: Padding(
                    padding: const EdgeInsets.all(AppPadding.p8),
                    child: SvgPicture.asset(ImageAssets.acIcon),
                  ),
                ),
                const SizedBox(width: AppSize.s16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'AC Installation',
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
                  'Status',
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
                    'Confirmed',
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
            Text(
              'Description:',
              style: context.textTheme.bodyMedium,
            ),
            const SizedBox(height: AppSize.s8),
            Container(
              padding: const EdgeInsets.all(AppSize.s8),
              decoration: BoxDecoration(
                color: ColorManager.textfieldFillColor,
                border: Border.all(
                  color: ColorManager.textfieldBorderColor,
                ),
                borderRadius: BorderRadius.circular(
                  AppSize.s12,
                ),
              ),
              child: const Text(
                'Lorem ipsum odor amet, consectetuer adipiscing elit. Per maximus odio felis lacinia magna, fermentum placerat. In leo mollis posuere consectetur donec nostra.',
              ),
            ),
            const SizedBox(height: AppSize.s8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Location:'),
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.map_outlined),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
