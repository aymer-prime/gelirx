import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gelirx/app/extentions/context.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/presentation/misc/functions.dart';

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppPadding.p8,
      ),
      child: SizedBox(
        height: AppSize.s100,
        child: Row(
          children: [
            Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: Container(
                  height: double.infinity,
                  decoration: BoxDecoration(
                      color: getCategoryColor(),
                      borderRadius: BorderRadius.circular(
                        AppSize.s12,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppPadding.p16,
                    ),
                    child: SvgPicture.asset(ImageAssets.acIcon),
                  )),
            ),
            const SizedBox(width: AppSize.s16),
            Flexible(
              flex: 7,
              fit: FlexFit.tight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(ImageAssets.star),
                          const SizedBox(width: AppSize.s4),
                          Text(
                            '4.8',
                            style: context.textTheme.labelMedium,
                          ),
                          const SizedBox(width: AppSize.s4),
                          Text(
                            '(87)',
                            style: context.textTheme.labelSmall,
                          ),
                        ],
                      ),
                      Text(
                        'AC Check-Up',
                        style: context.textTheme.labelLarge,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Starts from:',
                        style: context.textTheme.labelSmall,
                      ),
                      const SizedBox(height: AppSize.s16),
                      Container(
                        padding: const EdgeInsets.all(AppPadding.p6),
                        decoration: BoxDecoration(
                          color: ColorManager.priceLabel,
                          borderRadius: BorderRadius.circular(
                            AppSize.s8,
                          ),
                        ),
                        child: Text(
                          '\$128',
                          style: context.textTheme.labelMedium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
