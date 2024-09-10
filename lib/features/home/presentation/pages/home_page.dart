import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gelirx/app/extensions/List.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/presentation/bloc/home_bloc.dart';
import 'package:gelirx/features/home/presentation/misc/functions.dart';
import 'package:gelirx/features/shared/widgets/card_label_widget.dart';
import 'package:gelirx/features/home/presentation/widgets/top_categories_widget.dart';
import 'package:gelirx/features/shared/widgets/dialogs/loading_screen.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          return Padding(
            padding: const EdgeInsets.all(
              AppPadding.p16,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(AppPadding.p16),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStrings.welcomeSubtitle,
                          style: context.textTheme.titleMedium,
                        ),
                        Text(
                          AppStrings.welcomeTitle,
                          style: context.textTheme.displayMedium,
                        ),
                        const SizedBox(height: AppSize.s16),
                        TextField(
                          decoration: InputDecoration(
                            hintText: AppStrings.searchHint,
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all(AppPadding.p8),
                              child: SizedBox(
                                height: AppSize.s32,
                                width: AppSize.s32,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: SvgPicture.asset(
                                    ImageAssets.searchIcon,
                                    height: AppSize.s16,
                                    width: AppSize.s16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSize.s16),
                  Container(
                    padding: const EdgeInsets.all(AppPadding.p16),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ColorManager.white,
                    ),
                    child: state.categories.isEmpty
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : TopCategoriesWidgets(
                            categories: state.categories,
                          ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(AppPadding.p16),
                    decoration: BoxDecoration(color: ColorManager.white),
                  ),
                  const SizedBox(height: AppSize.s16),
                  Container(
                    height: AppSize.s200,
                    padding: const EdgeInsets.all(AppPadding.p16),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ColorManager.white,
                    ),
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        OfferWidget(),
                        OfferWidget(),
                        OfferWidget(),
                      ].separateWith(const SizedBox(
                        width: AppSize.s16,
                      )),
                    ),
                  ),
                  const SizedBox(height: AppSize.s16),
                  Container(
                    padding: const EdgeInsets.all(AppPadding.p16),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ColorManager.white,
                    ),
                    child: Column(
                      children: [
                        const CardLabelWidget(label: 'Appliance repair'),
                        const SizedBox(
                          height: AppSize.s16,
                        ),
                        Container(
                          width: double.infinity,
                          height: AppSize.s200,
                          decoration: BoxDecoration(
                            color: ColorManager.lightPrimary,
                            borderRadius: BorderRadius.circular(
                              AppSize.s8,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Image.asset(ImageAssets.appliance),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: AppPadding.p16,
                                ),
                                child: SizedBox(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                      ElevatedButton(
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
                                                style: context
                                                    .textTheme.labelLarge!
                                                    .copyWith(
                                                  color:
                                                      ColorManager.lightPrimary,
                                                ),
                                              ),
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_rounded,
                                                color:
                                                    ColorManager.lightPrimary,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
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
