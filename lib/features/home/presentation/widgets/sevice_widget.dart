import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/domain/entities/category.dart';
import 'package:gelirx/features/shared/widgets/card_label_widget.dart';

class ServiceWidget extends StatelessWidget {
  final Category service;
  const ServiceWidget({
    super.key,
    required this.service,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppPadding.p8,
      ),
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SizedBox(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: ColorManager.background,
                ),
                child: Stack(
                  children: [
                    Container(
                      height: context.screenSize.height * 0.3,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: ColorManager.lightPrimary.withOpacity(1),
                      ),
                      child: CachedNetworkImage(imageUrl: service.img),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppPadding.p16, vertical: AppPadding.p8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: context.screenSize.height * 0.25,
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: ColorManager.white,
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: const Icon(
                                      Icons.arrow_back_ios_new_rounded,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(
                              AppPadding.p16,
                            ),
                            decoration: BoxDecoration(
                              color: ColorManager.white,
                              borderRadius: BorderRadius.circular(AppSize.s12),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Center(
                                  child: Container(
                                    height: AppSize.s4,
                                    width: AppSize.s64,
                                    decoration: BoxDecoration(
                                        color: ColorManager.lightPrimary,
                                        borderRadius: BorderRadius.circular(
                                          AppSize.s4,
                                        )),
                                  ),
                                ),
                                const SizedBox(height: AppSize.s8),
                                Center(
                                  child: Text(
                                    service.name,
                                    style: context.textTheme.displayMedium,
                                  ),
                                ),
                                const SizedBox(height: AppSize.s24),
                                const CardLabelWidget(
                                  label: 'Service Provider',
                                ),
                                const SizedBox(height: AppSize.s16),
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
                                    Text(
                                      'Master Name',
                                      style: context.textTheme.titleLarge,
                                    ),
                                    const SizedBox(width: AppSize.s8),
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
                                  ],
                                ),
                                const SizedBox(height: AppSize.s24),
                                const CardLabelWidget(label: 'Book Service'),
                                const SizedBox(height: AppSize.s16),
                                const TextField(
                                  maxLength: 1000,
                                  maxLengthEnforcement:
                                      MaxLengthEnforcement.enforced,
                                  maxLines: null,
                                  minLines: 5,
                                  decoration: InputDecoration(
                                    hintText: 'Problem Description . . .',
                                  ),
                                ),
                                const SizedBox(height: AppSize.s16),
                                Row(
                                  children: [
                                    Flexible(
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: const SizedBox(
                                          child: Center(
                                            child: Text('Book service'),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: AppSize.s8),
                                    Flexible(
                                      child: OutlinedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const SizedBox(
                                          child: Center(
                                            child: Text('Cancel'),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        child: SizedBox(
          height: AppSize.s120,
          child: Row(
            children: [
              Flexible(
                flex: 3,
                fit: FlexFit.tight,
                child: Container(
                  height: double.infinity,
                  decoration: BoxDecoration(
                      color: ColorManager.lightPrimary,
                      borderRadius: BorderRadius.circular(
                        AppSize.s12,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppPadding.p16,
                    ),
                    child: CachedNetworkImage(
                      imageUrl: service.img,
                    ),
                  ),
                ),
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
                          service.name,
                          style: context.textTheme.labelLarge,
                          overflow: TextOverflow.ellipsis,
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
                            color: ColorManager.lightPrimary.withOpacity(.4),
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
      ),
    );
  }
}
