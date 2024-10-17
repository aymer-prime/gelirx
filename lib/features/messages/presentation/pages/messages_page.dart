import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gelirx/app/extensions/List.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: AppSize.s24),
          Padding(
            padding: const EdgeInsets.only(left: AppPadding.p24),
            child: Text(
              'Messages',
              style: getRegularStyle(
                color: ColorManager.black,
                fontSize: FontSizeManager.s30,
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: AppPadding.p24,
                  right: AppPadding.p24,
                  top: AppPadding.p30,
                ),
                child: Column(
                  children: List.generate(
                    12,
                    (index) => Container(
                      height: 70,
                      color: Colors.transparent,
                      child: GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            AspectRatio(
                              aspectRatio: 1,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  ImageAssets.handyman,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: AppSize.s15),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Osman Yılmaz',
                                        style: getMediumStyle(
                                          color: ColorManager.black,
                                          fontSize: FontSizeManager.s16,
                                        ),
                                      ),
                                      Text(
                                        '15:06',
                                        style: getLightStyle(
                                          color: ColorManager.tabBarColor,
                                          fontSize: FontSizeManager.s13,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Radiator Cleaning, House Cleaning, House to House Transportation',
                                    overflow: TextOverflow.ellipsis,
                                    style: getRegularStyle(
                                      color: ColorManager.tabBarColor,
                                      fontSize: FontSizeManager.s13,
                                    ),
                                  ),
                                  const SizedBox(height: AppSize.s6),
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec gravida nec ligula eu ornare. Nulla rutrum quam et enim hendrerit, aliquet egestas ante venenatis.',
                                    overflow: TextOverflow.ellipsis,
                                    style: getRegularStyle(
                                      color: ColorManager.textSubtitleColor,
                                      fontSize: FontSizeManager.s13,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ).separateWith(SizedBox(
                    height: AppSize.s20,
                  )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
