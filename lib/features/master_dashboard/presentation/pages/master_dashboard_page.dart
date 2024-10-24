import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gelirx/app/extensions/List.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:intl/intl.dart';

@RoutePage()
class MasterDashboardPage extends StatelessWidget {
  const MasterDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        title: const Text('Osman Yılmaz'),
        centerTitle: false,
        actions: [
          Container(
            height: 30,
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
            //margin: const EdgeInsets.symmetric(horizontal: AppMargin.m4),
            decoration: BoxDecoration(
              color: ColorManager.confirmedColor,
              borderRadius: BorderRadius.circular(
                AppSize.s12,
              ),
            ),
            child: Center(
              child: Text(
                'Available',
                style: context.textTheme.labelSmall!.copyWith(
                  color: ColorManager.confirmedTextColor,
                ),
              ),
            ),
          ),
          const SizedBox(width: AppSize.s8),
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
      ),
      body: const MasterDashboardBody(),
    );
  }
}

class MasterDashboardBody extends StatelessWidget {
  const MasterDashboardBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(AppPadding.p24),
        child: Column(
          children: [
            MasterBookingWidget(),
            SizedBox(height: AppSize.s16),
            MasterBookingWidget(),
            SizedBox(height: AppSize.s16),
            MasterBookingWidget(),
          ],
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
        borderRadius: BorderRadius.circular(AppSize.s16),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 1,
            color: Color.fromARGB((255 * 0.2).floor(), 0, 0, 0),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'AC Installation',
                  style: context.textTheme.headlineSmall,
                ),
                Text(
                  DateFormat('dd-MM-yyyy hh:mm').format(DateTime.now()),
                  style: context.textTheme.labelSmall,
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
              'Problem Explanation:',
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
            const SizedBox(height: AppSize.s16),
            Text(
              'Location:',
              style: context.textTheme.bodyMedium,
            ),
            const SizedBox(height: AppSize.s8),
            Container(
              width: double.infinity,
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
              child:
                  const Text('Business Bay, Silver Tower 9 floor 904, Dubai'),
            ),
            const SizedBox(height: AppSize.s16),
            Text(
              'Problem Photos:',
              style: context.textTheme.bodyMedium,
            ),
            const SizedBox(height: AppSize.s8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                5,
                (index) => Flexible(
                  child: AspectRatio(
                    aspectRatio: 0.858,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        AppSize.s10,
                      ),
                      child: Image.asset(
                        ImageAssets.tesisat,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ).separateWith(
                const SizedBox(width: AppSize.s10),
              ),
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
                Flexible(
                  fit: FlexFit.tight,
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        context.router.push(const MasterActiveServiceRoute());
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                          AppSize.s8,
                        )),
                        backgroundColor: ColorManager.joyColor,
                      ),
                      child: const Text('Accept'),
                    ),
                  ),
                ),
                const SizedBox(width: AppSize.s8),
                Flexible(
                  fit: FlexFit.tight,
                  child: SizedBox(
                    height: 50,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Decline'),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
