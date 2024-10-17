import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/domain/entities/master.dart';

class MasterDetailsDialog extends StatelessWidget {
  final Master master;
  const MasterDetailsDialog({
    super.key,
    required this.master,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      alignment: Alignment.bottomCenter,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: SizedBox(
          height: 210,
          child: Stack(
            children: [
              Positioned.fill(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.transparent,
                  child: GestureDetector(
                    onTap: () {
                      context.router.push(MasterRoute(
                        masterId: master.id,
                      ));
                    },
                    child: Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(
                            AppPadding.p20,
                          ),
                          decoration: BoxDecoration(
                            color: ColorManager.white,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 1,
                                color: Color.fromARGB(
                                    (255 * 0.3).floor(), 0, 0, 0),
                              )
                            ],
                          ),
                          child: Row(
                            children: [
                              Flexible(
                                flex: 4,
                                child: Stack(
                                  children: [
                                    SizedBox(
                                      height: double.infinity,
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(16),
                                          bottomLeft: Radius.circular(16),
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
                                          backgroundColor: ColorManager.white,
                                        ),
                                        icon: const Icon(
                                          FontAwesomeIcons.heart,
                                          size: 14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Flexible(
                                flex: 7,
                                child: Padding(
                                  padding: const EdgeInsets.all(AppPadding.p15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Osman Yılmaz',
                                        style: context.textTheme.bodyLarge!
                                            .copyWith(
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
                                                        .lightGreyText,
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
                                        'Radiator Cleaning, House Cleaning, House to House Transportation',
                                        style: getRegularStyle(
                                          color: ColorManager.textSubtitleColor,
                                          fontSize: FontSizeManager.s13,
                                        ),
                                      ),
                                      const SizedBox(height: AppSize.s6),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            ImageAssets.location,
                                            color: ColorManager.black,
                                            height: AppSize.s14,
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: '35 Km ',
                                                  style: getRegularStyle(
                                                    color: ColorManager.black,
                                                    fontSize:
                                                        FontSizeManager.s14,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '(Yaklaşık 40 dk)',
                                                  style: getLightStyle(
                                                    color: ColorManager
                                                        .lightGreyText,
                                                    fontSize:
                                                        FontSizeManager.s13,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          height: 30,
                          width: 30,
                          child: Container(
                            decoration: BoxDecoration(
                              color: ColorManager.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  spreadRadius: 1,
                                  color: Color.fromARGB(
                                      (255 * 0.3).floor(), 0, 0, 0),
                                )
                              ],
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(
                                FontAwesomeIcons.xmark,
                                size: 14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
