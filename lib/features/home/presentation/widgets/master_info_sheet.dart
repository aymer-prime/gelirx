import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/domain/entities/master.dart';

class MasterInfoSheet extends StatelessWidget {
  final Master master;
  const MasterInfoSheet({super.key, required this.master});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p16,
          vertical: AppPadding.p8,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: AppSize.s4,
                width: AppSize.s64,
                decoration: BoxDecoration(
                  color: ColorManager.lightPrimary,
                  borderRadius: BorderRadius.circular(
                    AppSize.s4,
                  ),
                ),
              ),
            ),
            const SizedBox(height: AppSize.s16),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.all(AppSize.s4),
                decoration: BoxDecoration(
                  color: ColorManager.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: ColorManager.textTitleLightColor,
                  ),
                ),
                child: const Icon(
                  Icons.arrow_back_ios_rounded,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(AppPadding.p16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: AppSize.s40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: ColorManager.darkPrimary,
                            ),
                          ),
                          child: Image.asset(
                            ImageAssets.masterIcon,
                          ),
                        ),
                        const SizedBox(width: AppSize.s8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Text(
                            //   master.name,
                            //   style: context.textTheme.titleLarge,
                            // ),
                            const SizedBox(width: AppSize.s8),
                            Row(
                              children: [
                                SvgPicture.asset(ImageAssets.star),
                                const SizedBox(width: AppSize.s4),
                                Text(
                                  master.point,
                                  style: context.textTheme.labelMedium,
                                ),
                                const SizedBox(width: AppSize.s4),
                                Text(
                                  '(87)',
                                  style: context.textTheme.labelSmall,
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: AppSize.s16),
                    Text(
                      'Phone Number',
                      style: context.textTheme.labelLarge,
                    ),
                    // Container(
                    //   //height: AppSize.s60,
                    //   width: double.infinity,
                    //   padding: const EdgeInsets.all(AppPadding.p16),
                    //   decoration: BoxDecoration(
                    //     color: ColorManager.textfieldFillColor,
                    //     borderRadius: BorderRadius.circular(AppSize.s12),
                    //     border: Border.all(
                    //       color: ColorManager.textfieldBorderColor,
                    //     ),
                    //   ),
                    //   child: Text(master.phone),
                    // ),
                    const SizedBox(height: AppSize.s16),
                    Text(
                      'Year of Birth',
                      style: context.textTheme.labelLarge,
                    ),
                    Container(
                      //height: AppSize.s60,
                      width: double.infinity,
                      padding: const EdgeInsets.all(AppPadding.p16),
                      decoration: BoxDecoration(
                        color: ColorManager.textfieldFillColor,
                        borderRadius: BorderRadius.circular(AppSize.s12),
                        border: Border.all(
                          color: ColorManager.textfieldBorderColor,
                        ),
                      ),
                      child: const Text('1956'),
                    ),
                    const SizedBox(height: AppSize.s16),
                    Text(
                      'E-mail',
                      style: context.textTheme.labelLarge,
                    ),
                    Container(
                      //height: AppSize.s60,
                      width: double.infinity,
                      padding: const EdgeInsets.all(AppPadding.p16),
                      decoration: BoxDecoration(
                        color: ColorManager.textfieldFillColor,
                        borderRadius: BorderRadius.circular(AppSize.s12),
                        border: Border.all(
                          color: ColorManager.textfieldBorderColor,
                        ),
                      ),
                      child: const Text('abc@outlook.com'),
                    ),
                    const SizedBox(height: AppSize.s16),
                    Text(
                      'Skills',
                      style: context.textTheme.labelLarge,
                    ),
                    Container(
                      padding: const EdgeInsets.all(AppPadding.p8),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: ColorManager.textfieldFillColor,
                        borderRadius: BorderRadius.circular(AppSize.s8),
                        border: Border.all(
                            color: ColorManager.textfieldBorderColor),
                      ),
                      child: master.categories.isEmpty
                          ? const Text('you must choose at least one skill')
                          : Wrap(
                              children: master.categories
                                  .map(
                                    (e) => Container(
                                      padding:
                                          const EdgeInsets.all(AppPadding.p6),
                                      margin:
                                          const EdgeInsets.all(AppMargin.m4),
                                      decoration: BoxDecoration(
                                        color: ColorManager.white,
                                        border: Border.all(
                                          color:
                                              ColorManager.textfieldBorderColor,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          AppSize.s12,
                                        ),
                                      ),
                                      child: Wrap(
                                        children: [
                                          // Text(
                                          //   e.name,
                                          //   style:
                                          //       context.textTheme.labelMedium,
                                          // ),
                                        ],
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                    ),
                    const SizedBox(height: AppSize.s16),
                    SizedBox(
                      height: AppSize.s48,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Call'),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
