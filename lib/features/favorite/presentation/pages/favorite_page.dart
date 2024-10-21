import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gelirx/app/extensions/List.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

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
              'Favorite',
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
                    (index) => IntrinsicHeight(
                      child: Container(
                        color: Colors.transparent,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: ColorManager.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 1,
                                  color: Color.fromARGB(
                                      (255 * 0.2).floor(), 0, 0, 0),
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(AppPadding.p15),
                              child: Row(
                                children: [
                                  Flexible(
                                    flex: 4,
                                    child: Stack(
                                      children: [
                                        SizedBox(
                                          height: double.infinity,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              AppSize.s16,
                                            ),
                                            child: Image.asset(
                                              ImageAssets.handyman,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 10,
                                          left: 10,
                                          height: 30,
                                          width: 30,
                                          child: IconButton(
                                            onPressed: () {},
                                            style: IconButton.styleFrom(
                                              shape: const CircleBorder(),
                                              backgroundColor:
                                                  ColorManager.white,
                                            ),
                                            icon: Icon(
                                              FontAwesomeIcons.solidHeart,
                                              color: ColorManager.joyColor,
                                              size: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: AppSize.s15),
                                  Flexible(
                                    flex: 7,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Osman Yılmaz',
                                          style: getMediumStyle(
                                            color: ColorManager.black,
                                            fontSize: FontSizeManager.s20,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                              ImageAssets.star,
                                            ),
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: ' 4.1   ',
                                                    style: context
                                                        .textTheme.bodyLarge!
                                                        .copyWith(
                                                      color: ColorManager.black,
                                                      fontSize:
                                                          FontSizeManager.s14,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '(27 Reviews)',
                                                    style: getLightStyle(
                                                      color: ColorManager
                                                          .tabBarColor,
                                                      fontSize:
                                                          FontSizeManager.s14,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        const SizedBox(height: AppSize.s6),
                                        Text(
                                          'Radiator Cleaning, House Cleaning, House to House Transportation.',
                                          style: getRegularStyle(
                                            color:
                                                ColorManager.textSubtitleColor,
                                            fontSize: FontSizeManager.s13,
                                          ).copyWith(
                                            height: 1.25,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ).separateWith(SizedBox(
                    height: AppSize.s24,
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
