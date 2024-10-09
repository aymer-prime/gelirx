import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/presentation/bloc/home_bloc.dart';
import 'package:gelirx/features/home/presentation/misc/functions.dart';
import 'package:gelirx/features/home/presentation/widgets/home_content.dart';
import 'package:gelirx/features/home/presentation/widgets/home_map_widget.dart';
import 'package:gelirx/features/shared/widgets/dialogs/loading_screen.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: BlocConsumer<HomeBloc, HomeState>(
        listenWhen: (previous, current) =>
            previous.isLoading != current.isLoading,
        listener: (context, state) {
          if (state.isLoading) {
            LoadingScreen.instance().showLoadingScreen(
              context: context,
              text: 'Loading . . .',
            );
          } else {
            LoadingScreen.instance().hide();
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.p16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //SizedBox(height: AppSize.s20.h),
                  SizedBox(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Discover ',
                            style: context.textTheme.displaySmall!.copyWith(
                              color: ColorManager.joyColor,
                              fontSize: FontSizeManager.s26,
                            ),
                          ),
                          TextSpan(
                            text: 'the best, highest quality services near you',
                            style: context.textTheme.titleSmall!.copyWith(
                              color: ColorManager.textTitleColor,
                              fontSize: FontSizeManager.s26,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: AppSize.s20.h),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppSize.s30,
                      ),
                    ),
                    height: AppSize.s220.h,
                    child: state.userPosition.fold(
                      () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      (userPosition) => ClipRRect(
                        borderRadius: BorderRadius.circular(
                          AppSize.s30,
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: HomeMap(
                            userPosition: userPosition,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: AppSize.s20.h),
                  SizedBox(
                    height: 40,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 6,
                          child: TextField(
                            onTapOutside: (_) =>
                                FocusManager.instance.primaryFocus?.unfocus(),
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              fillColor: ColorManager.lightGrey,
                              hintText: AppStrings.searchHint,
                              prefixIcon: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: AppPadding.p12,
                                ),
                                child: SvgPicture.asset(
                                  ImageAssets.searchIcon,
                                  fit: BoxFit.fitHeight,
                                  colorFilter: ColorFilter.mode(
                                    ColorManager.textTitleColor,
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: AppSize.s8),
                        Flexible(
                          flex: 1,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ColorManager.lightGrey,
                            ),
                            onPressed: () {},
                            child: Icon(
                              FontAwesomeIcons.sliders,
                              size: AppSize.s16,
                              color: ColorManager.textTitleColor,
                            ),
                          ),
                        ),
                        const SizedBox(width: AppSize.s8),
                        Flexible(
                          flex: 1,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ColorManager.lightGrey,
                            ),
                            onPressed: () {},
                            child: Icon(
                              FontAwesomeIcons.sort,
                              size: AppSize.s16,
                              color: ColorManager.textTitleColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: AppSize.s20.h),
                  HomeContent(
                    categories: state.categories,
                    topCategories:
                        state.services.expand((obj) => obj.subSkill).toList(),
                    services: state.services,
                    filters: state.catFilterIndexes,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class OfferWidget extends StatelessWidget {
  const OfferWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.s220,
      height: AppSize.s160,
      padding: const EdgeInsets.symmetric(
        vertical: AppPadding.p20,
        horizontal: AppPadding.p12,
      ),
      decoration: BoxDecoration(
        color: getCategoryColor(),
        borderRadius: BorderRadius.circular(
          AppSize.s8,
        ),
      ),
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Offer Dry Cleaning',
                  style: context.textTheme.labelLarge,
                ),
                const SizedBox(width: AppSize.s4),
                const Icon(Icons.info)
              ],
            ),
            const SizedBox(height: AppSize.s12),
            Text(
              'Get 25%',
              style: context.textTheme.displayMedium,
            ),
            const SizedBox(height: AppSize.s12),
            SizedBox(
              height: AppSize.s32,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorManager.white,
                  shape: StadiumBorder(),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppPadding.p12,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Grab offer',
                        style: context.textTheme.labelLarge!.copyWith(
                          color: ColorManager.lightPrimary,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right_rounded,
                        color: ColorManager.lightPrimary,
                      )
                    ],
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
