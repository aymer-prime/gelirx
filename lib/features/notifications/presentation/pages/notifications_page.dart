import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/presentation/widgets/filter_widget.dart';
import 'package:gelirx/features/shared/widgets/card_label_widget.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(
          AppPadding.p16,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Flexible(
                  child: CardLabelWidget(label: 'Notifications'),
                ),
                Flexible(
                  child: FilterWidget(
                    title: 'Notifications',
                    data: const ['All', 'Unread', 'Read'],
                    currentFilterIndex: 0,
                    onSelect: (index) {},
                  ),
                )
              ],
            ),
            const SizedBox(height: AppSize.s16),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: ColorManager.white,
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppPadding.p20,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          ImageAssets.noNotifications,
                        ),
                        const SizedBox(height: AppSize.s32),
                        Text(
                          'No Notifications!',
                          style: context.textTheme.displaySmall,
                        ),
                        const SizedBox(height: AppSize.s8),
                        Text(
                          'You do not have any notifications yet. please place an order.',
                          style: context.textTheme.labelSmall,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
