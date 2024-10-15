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
          height: 300 + 32,
          child: Stack(
            children: [
              Positioned.fill(
                bottom: 32,
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
                    child: Container(
                      padding: const EdgeInsets.all(AppPadding.p15),
                      margin: const EdgeInsets.symmetric(
                        horizontal: AppPadding.p32,
                      ),
                      decoration: BoxDecoration(
                        color: ColorManager.blueColor,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: Stack(
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      AppSize.s16,
                                    ),
                                    child: Image.asset(
                                      ImageAssets.tesisat,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      style: IconButton.styleFrom(
                                        shape: const CircleBorder(),
                                        backgroundColor: ColorManager.white,
                                      ),
                                      icon: const Icon(
                                        FontAwesomeIcons.heart,
                                        size: 16,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      style: IconButton.styleFrom(
                                        shape: const CircleBorder(),
                                        backgroundColor: ColorManager.white,
                                      ),
                                      icon: const Icon(
                                        FontAwesomeIcons.xmark,
                                        size: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: AppSize.s10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Osman Yancıgil, Id:${master.id}',
                                style: getRegularStyle(
                                  color: ColorManager.white,
                                  fontSize: FontSizeManager.s20,
                                ),
                              ),
                              const SizedBox(height: AppSize.s10),
                              Text(
                                'Petek Temizliği, Ev Temizliği, Evden Eve Nakliyat',
                                style: context.textTheme.bodyMedium!.copyWith(
                                  color: ColorManager.lightGreyText,
                                ),
                              ),
                              const SizedBox(height: AppSize.s12),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        ImageAssets.star,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: ' 4.1 ',
                                              style: context
                                                  .textTheme.bodyMedium!
                                                  .copyWith(
                                                color: ColorManager.white,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '(27)',
                                              style: context
                                                  .textTheme.bodyMedium!
                                                  .copyWith(
                                                color:
                                                    ColorManager.lightGreyText,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: AppSize.s30),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: ColorManager.white,
                                        size: AppSize.s14,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '35 Km ',
                                              style: context
                                                  .textTheme.bodyMedium!
                                                  .copyWith(
                                                color: ColorManager.white,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '(Yaklaşık 40 dk)',
                                              style: context
                                                  .textTheme.bodyMedium!
                                                  .copyWith(
                                                color:
                                                    ColorManager.lightGreyText,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
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
