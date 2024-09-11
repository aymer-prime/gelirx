import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/presentation/widgets/filter_widget.dart';
import 'package:gelirx/features/shared/widgets/card_label_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(
          AppPadding.p16,
        ),
        child: Column(
          children: [
            const CardLabelWidget(label: 'Profile'),
            const SizedBox(height: AppSize.s16),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: ColorManager.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
